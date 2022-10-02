import logging
from typing import Tuple, Union, Callable, List, Any, Dict, Optional

import numpy as np
import numpy.linalg as linalg
import pandas as pd
import scipy.stats as stats
from sklearn.preprocessing import MaxAbsScaler, MinMaxScaler, StandardScaler, PowerTransformer

from aria.core.components import Component
from aria.core.models import Model

scalers = Union[MaxAbsScaler, MinMaxScaler, StandardScaler, PowerTransformer]


class BackwardStepwiseSelector(Model):
    def __init__(self, model: Callable[..., Model], components: List[Component],
                 model_args: Optional[Tuple[Any]] = None, model_kwargs: Optional[Dict[str, Any]] = None,
                 min_features: int = 0, t_scaler: scalers = None, y_scaler: scalers = None,
                 selector: Callable[..., int] = None, evaluation_strategy: str = 'none',
                 evaluator: Callable[[Model, pd.DataFrame], float] = None):
        """
        Backward Stepwise Feature Selector
        :param model: Underlying model type to use, preferably a LinearModel variant
        :param components: List of components to use
        :param model_args: Tuple of additional arguments to be passed when initializing model
        :param model_kwargs: Dict of additional keyword arguments to be passed when initializing model
        :param min_features: If defined, sets a minimum feature cutoff
        :param t_scaler: sklearn.preprocessing scaler to use for scaling t column in DataFrames
        :param y_scaler: sklearn.preprocessing scaler to use for scaling t column in DataFrames
        :param selector: feature selection function. function parameters are [y, yhat, features, betas], should return
        index of feature column to remove(index of feature axis 1)
        :param evaluation_strategy: Can be Union["stop", "fix", "none"] *TODO: add additional info later*
        :param evaluator: evaluator score function
        """
        super().__init__(components)
        self.model = model
        self.model_args = model_args or []
        self.model_kwargs = model_kwargs or {}
        self.min_features = min_features
        self.t_scaler = t_scaler or MinMaxScaler()
        self.y_scaler = y_scaler or MaxAbsScaler()
        self.selector = selector
        self.evaluation_strategy = evaluation_strategy
        self.evaluator = evaluator

    @staticmethod
    def simple_evaluator(func, test_df=None):
        def evaluator(m, df):
            if test_df is not None:
                return func(test_df['y'], m.predict(test_df)['yhat'])
            else:
                return func(df['y'], m.predict(df)['yhat'])

        return evaluator

    @staticmethod
    def _pse(y: np.ndarray, yhat: np.ndarray, x: np.ndarray, fit_intercept=False) -> np.ndarray:
        """
        Find per-parameter Standard Error. Y data should be zero-centered.
        :param y: y value array, zero-centered
        :param yhat: y prediction value array, zero-centered
        :param x: predictor matrix(features)
        :param fit_intercept: set value depending on sklearn model's fit_intercept
        :returns: array of SE values

        https://www.originlab.com/doc/origin-Help/PR-Algorithm#The_Parameter_Standard_Errors
        https://stats.stackexchange.com/questions/216335/standard-error-for-a-parameter-in-ordinary-least-squares
        https://stackoverflow.com/questions/22381497/python-scikit-learn-linear-model-parameter-standard-error

        N = number of days
        p = number of parameters
        y.shape = [N,]  # 1d row vector. no need to reshape(-1, 1), resulting values are the same
        yhat.shape = [N,]  # 1d row vector
        x.shape = [N_y, p]

        B_hat = inv(x.T • x) • x.T • y = inv([p, N]•[N, p]) • [N,p] • [N_y]
        sigma = rss / (N - p)
        Var(B_hat) = inv(x.T • x) • sigma
        pse = sqrt(Var(B_hat))
        """

        if fit_intercept:  # add sklearn intercept term
            x_augmented = np.empty(shape=(x.shape[0], x.shape[1] + 1), dtype=np.float)
            x_augmented[:, 0] = 1
            x_augmented[:, 1:(x.shape[1] + 1)] = x
            x = x_augmented

        # beta_hat = np.dot(np.linalg.inv(np.dot(np.transpose(x), x)), np.transpose(x)) @ y

        residual = (y - yhat)
        rss = np.dot(np.transpose(residual), residual)  # residual sum of squares
        sigma_squared_hat = rss / (x.shape[0] - (x.shape[1] + 1 if fit_intercept else x.shape[1]))  # residual std (n-p)

        var_beta_hat = linalg.inv(np.dot(np.transpose(x), x)) * sigma_squared_hat  # parameter cov matrix
        return np.sqrt(np.diag(var_beta_hat))[1 if fit_intercept else 0:]

    @staticmethod
    def _tvalues(y: np.ndarray, yhat: np.ndarray, x: np.ndarray, betas: np.ndarray) -> np.ndarray:
        """
        Calculate t-statistic for each parameter
        :param y: y value array, zero-centered
        :param yhat: y prediction value array, zero-centered
        :param x: predictor matrix
        :param betas: fitted model beta coefficients
        :returns: array of t-values
        https://github.com/statsmodels/statsmodels/blob/70058d8d85956cdc923db82cd683787d82907cd5/statsmodels/base/model.py#L1360
        """
        pse = BackwardStepwiseSelector._pse(y, yhat, x)
        return betas / pse

    @staticmethod
    def _pvalues(y: np.ndarray, yhat: np.ndarray, x: np.ndarray, betas: np.ndarray) -> np.ndarray:
        """
        Calculate P > |t| for each parameter
        :param y: y value array, zero centered
        :param yhat: y prediction value array, zero centered
        :param x: predictor matrix
        :param betas: fitted model beta array
        :returns: array of p-values
        https://github.com/statsmodels/statsmodels/blob/70058d8d85956cdc923db82cd683787d82907cd5/statsmodels/base/model.py#L1367
        """
        # self.use_t?
        # return stats.t.sf(np.abs(BackwardStepwiseSelector._tvalues(y, yhat, x, betas)), y - yhat) * 2
        t_statistics = BackwardStepwiseSelector._tvalues(y, yhat, x, betas)
        return stats.norm.sf(np.abs(t_statistics)) * 2

    @staticmethod
    def pvalue_max_selector(y: np.ndarray, yhat: np.ndarray, features: np.ndarray, betas: np.ndarray, **kwargs) \
            -> Optional[np.ndarray]:
        """
        Feature selector based on p-values. Returns argmax(pvalues) if max(pvalues) > threshold else None
        :param y: y value array, zero centered
        :param yhat: y prediction value array, zero centered
        :param features: feature matrix
        :param betas: fitted model beta array
        :returns: argmax(pvalues) if max(pvalues) > threshold else None
        """
        pvalues = BackwardStepwiseSelector._pvalues(y, yhat, features, betas)
        return np.argmax(pvalues)

    @staticmethod
    def beta_min_selector(betas: np.ndarray, **kwargs) -> int:
        """
        Feature selector, selects column with lowest beta coefficient
        :param betas: fitted model beta array
        :returns: argmin(betas)
        """
        return int(np.argmin(betas))

    def fit(self, df: pd.DataFrame) -> Union[float, None]:
        df = df.reset_index(drop=True)
        scaled_df = pd.DataFrame({
            'ds': pd.to_datetime(df['ds']),
            't': self.t_scaler.fit_transform(df[['ds']].apply(pd.to_datetime)).flatten(),
            'y': self.y_scaler.fit_transform(df[['y']]).flatten(),
        })

        for component in self.components:
            component.fit(scaled_df)

        selected_features = self.get_features(scaled_df)
        fixed_features = []
        strategy = self.selector or self.pvalue_max_selector
        last_model, last_prediction, last_score = None, None, None

        while True:
            if last_model is None:
                current_model: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
                current_model.set_features_list(selected_features.columns.tolist() + fixed_features)
                current_model.fit(df)
            else:
                current_model = last_model

            if last_prediction is None:
                prediction_df = current_model.predict(df)[['yhat']]
                scaled_prediction = self.y_scaler.transform(prediction_df).flatten()
            else:
                scaled_prediction = last_prediction

            selected_column = strategy(y=scaled_df["y"].values, yhat=scaled_prediction, features=selected_features,
                                       betas=current_model.beta[:selected_features.shape[1]])
            if selected_column is None:
                logging.debug(f'Selector returned no parameter to remove. stopping selection')
                break
            param = selected_features.columns[selected_column]

            if self.evaluation_strategy == 'stop':
                new_model: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
                new_model.set_features_list(selected_features.drop(columns=param).columns.tolist() + fixed_features)
                new_model.fit(df)
                score = self.evaluator(new_model, df)
                logging.debug(f"new score {score}, old score {last_score}")
                if last_score is not None and last_score < score:
                    logging.debug(f'Got new score {score:.4g}; stopping selection')
                    break
                else:
                    logging.debug(f'Got new score {score:.4g}; removing parameter(s) {param}')
                    selected_features.drop(columns=param, inplace=True)
                    last_model, last_prediction, last_score = new_model, None, score
            elif self.evaluation_strategy == 'fix':
                new_model: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
                new_model.set_features_list(selected_features.drop(columns=param).columns.tolist() + fixed_features)
                new_model.fit(df)
                score = self.evaluator(new_model, df)
                if last_score is not None and last_score < score:
                    logging.debug(f'Got new score {score:.4g}; fixing parameter {param}')
                    selected_features.drop(columns=param, inplace=True)
                    fixed_features.append(param)
                else:
                    logging.debug(f'Got new score {score:.4g}; removing parameter {param}')
                    selected_features.drop(columns=param, inplace=True)
                    last_model, last_residual, last_score = new_model, None, score
            elif self.evaluation_strategy == 'none':
                logging.debug(f"got parameter: {param}")
                selected_features.drop(columns=param, inplace=True)
            else:
                raise ValueError(f'Invalid evaluation strategy: {self.evaluation_strategy}')

            if self.min_features >= len(selected_features.columns):
                logging.debug('Stopping selection')
                break

        self.set_params(selected_features.columns.tolist() + fixed_features)
        return last_score

    def predict(self, df: pd.DataFrame) -> Model:
        m: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
        m.set_features_list(self.get_params())
        m.fit(df)
        return m
