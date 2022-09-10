import logging

import numpy as np
import numpy.linalg as linalg
import pandas as pd
from sklearn.preprocessing import MaxAbsScaler, MinMaxScaler

from aria.core.models import Model


class ForwardStepwiseSelector(Model):
    def __init__(self, model, components, model_args=None, model_kwargs=None, max_features=None, early_stop_ratio=None,
                 early_stop_drops=None, t_scaler=None, y_scaler=None, selector=None, evaluation_strategy='none',
                 evaluator=None):
        super().__init__(components)
        self.model = model
        self.model_args = model_args or []
        self.model_kwargs = model_kwargs or {}
        self.max_features = max_features
        self.early_stop_ratio = early_stop_ratio
        self.early_stop_drops = early_stop_drops
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
    def cosine_selector(candidate_features, residual):
        candidate_features /= linalg.norm(candidate_features, axis=0)  # to unit vector
        similarity = np.abs(candidate_features.transpose() @ residual)
        return np.argmax(similarity)

    def fit(self, df):
        df = df.reset_index(drop=True)
        scaled_df = pd.DataFrame({
            'ds': pd.to_datetime(df['ds']),
            't': self.t_scaler.fit_transform(df[['ds']].apply(pd.to_datetime)).flatten(),
            'y': self.y_scaler.fit_transform(df[['y']]).flatten(),
        })

        for component in self.components:
            component.fit(scaled_df)

        candidate_features = self.get_features(scaled_df)
        selected_features = []
        strategy = self.selector or self.cosine_selector
        last_model, last_residual, last_score = None, None, None
        drops = 0
        for _ in range(len(candidate_features.columns)):
            if last_model is None:
                current_model: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
                current_model.set_features_list(selected_features)
                current_model.fit(df)
            else:
                current_model = last_model

            if last_residual is None:
                prediction_df = current_model.predict(df)[['yhat']]
                scaled_prediction = self.y_scaler.transform(prediction_df).flatten()
                residual = scaled_df['y'] - scaled_prediction
            else:
                residual = last_residual

            param = candidate_features.columns[strategy(candidate_features, residual)]
            candidate_features.drop(columns=param, inplace=True)

            if self.evaluation_strategy == 'stop':
                new_model: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
                new_model.set_features_list(selected_features + [param])
                new_model.fit(df)
                score = self.evaluator(new_model, df)
                if last_score is not None and last_score < score:
                    logging.debug(f'Got new score {score:.4g}; stopping selection')
                    break
                elif self.early_stop_ratio and last_score is not None and (last_score - score) / last_score < self.early_stop_ratio:
                    logging.debug(f'Got new score {score:.4g}; selecting parameter {param}')
                    logging.debug('early stopping selection')
                    selected_features.append(param)
                    break
                else:
                    logging.debug(f'Got new score {score:.4g}; selecting parameter {param}')
                    selected_features.append(param)
                    last_model, last_residual, last_score = new_model, None, score
            elif self.evaluation_strategy == 'drop':
                new_model: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
                new_model.set_features_list(selected_features + [param])
                new_model.fit(df)
                score = self.evaluator(new_model, df)
                if last_score is not None and last_score < score:
                    logging.debug(f'Got new score {score:.4g}; dropping parameter {param}')
                    last_residual = residual
                    drops += 1
                    if self.early_stop_drops is not None and drops >= self.early_stop_drops:
                        logging.debug('early stopping selection')
                        break
                elif self.early_stop_ratio and last_score is not None and (last_score - score) / last_score < self.early_stop_ratio:
                    logging.debug(f'Got new score {score:.4g}; selecting parameter {param}')
                    logging.debug('early stopping selection')
                    selected_features.append(param)
                    break
                else:
                    logging.debug(f'Got new score {score:.4g}; selecting parameter {param}')
                    selected_features.append(param)
                    last_model, last_residual, last_score = new_model, None, score
                    drops = 0
            elif self.evaluation_strategy == 'none':
                selected_features.append(param)
            else:
                raise ValueError(f'Invalid evaluation strategy: {self.evaluation_strategy}')

            if self.max_features and self.max_features <= len(selected_features):
                logging.debug('Stopping selection')
                break

        self.set_params(selected_features)
        return last_score

    def predict(self, df):
        m: Model = self.model(self.components, *self.model_args, **self.model_kwargs)
        m.set_features_list(self.get_params())
        m.fit(df)
        return m
