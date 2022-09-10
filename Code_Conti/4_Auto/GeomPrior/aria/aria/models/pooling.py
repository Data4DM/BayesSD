from collections import defaultdict

import numpy as np
import pandas as pd

from aria.core.models import Model
from aria.utils.stan import get_stan_model
from scipy.stats import norm


class PoolingModel(Model):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

        self.stan_model = get_stan_model('pooling_model.stan')

        self.t_start = None
        self.t_scale = None
        self.y_scale = None
        self.history = None
        self.changepoints = None
        self.seasonalities = []
        self.holidays = []
        self.dimensions = []
        self.pools = None
        self.num_pools = None
        self.params = None

    def add_dimension(self, name):
        self.dimensions.append(name)

    def add_seasonality(self, period, fourier_order):
        self.seasonalities.append({
            'period': period,
            'fourier_order': fourier_order,
        })

    def add_holidays(self, holidays, lower_window=0, upper_window=0):
        self.holidays.append({
            'holidays': holidays,
            'lower_window': lower_window,
            'upper_window': upper_window,
        })

    def set_scales(self, df):
        self.t_start = df['ds'].min()
        self.t_scale = df['ds'].max() - self.t_start
        self.y_scale = df['y'].abs().max()

    def scale_t(self, s):
        return (s - self.t_start) / self.t_scale

    def scale_y(self, s):
        return s / self.y_scale

    def unscale_y(self, s):
        return s * self.y_scale

    def set_history(self, df):
        self.history = df

    @staticmethod
    def make_dummy_features(df):
        return np.array([
            np.zeros(df.shape[0]),
        ])

    @staticmethod
    def make_seasonality_features(df, period, fourier_order):
        t = np.array((df['ds'] - pd.datetime(1970, 1, 1)).dt.total_seconds().astype(np.float)) / (3600. * 24.)
        return np.array([
            fun((2.0 * (i + 1) * np.pi * t / period))
            for i in range(fourier_order)
            for fun in (np.sin, np.cos)
        ])

    @staticmethod
    def make_holiday_features(df, holidays, lower_window, upper_window):
        holidays = np.unique(np.array([
            holiday + pd.to_timedelta(np.arange(lower_window, upper_window + 1), unit='d')
            for holiday in pd.to_datetime(holidays)
        ]))
        return np.array([
            np.where(df['ds'].isin(holidays), 1., 0.)
        ])

    def make_regressor_features(self, df):
        dummy_features = self.make_dummy_features(df)
        seasonality_features = [
            self.make_seasonality_features(df, props['period'], props['fourier_order'])
            for props in self.seasonalities
        ]
        holiday_features = [
            self.make_holiday_features(df, props['holidays'], props['lower_window'], props['upper_window'])
            for props in self.holidays
        ]
        return np.concatenate([
            dummy_features,
            *seasonality_features,
            *holiday_features,
        ], axis=0).transpose()

    def set_changepoints(self, df):
        hist_size = np.floor(df.shape[0] * 0.8)
        num_points = min(25, hist_size - 1)
        if num_points > 0:
            indices = np.linspace(0, hist_size - 1, num_points + 1).round().astype(np.int)[1:]
            self.changepoints = df.iloc[indices]['t']
        else:
            self.changepoints = np.zeros(1)

    def set_pools(self, df):
        if self.dimensions:
            self.pools = {
                dim: np.sort(df[dim].unique()).tolist()
                for dim in self.dimensions
            }
        else:
            self.pools = {
                None: [],
            }
        self.num_pools = max([len(pools) for _, pools in self.pools.items()]) + 1

    @staticmethod
    def get_init(df):
        i0, i1 = df['t'].idxmin(), df['t'].idxmax()
        k = (df['y_scaled'].loc[i0] - df['y_scaled'].loc[i1]) / (df['t'].loc[i0] - df['t'].loc[i1])
        m = df['y_scaled'].loc[i0] - k * df['t'].loc[i0]
        return {
            'k': k,
            'm': m,
        }

    def make_pooling_features(self, df):
        features = []
        for dim, pools in self.pools.items():
            if dim is not None:
                pools_dict = {v: k for k, v in enumerate(pools)}
                feature = df[dim].map(pools_dict).fillna(len(pools))
            else:
                feature = np.full(df.shape[0], len(pools))
            features.append(feature)
        return np.array(features).transpose()

    def fit(self, df):
        df = df[df['y'].notnull() & df['ds'].notnull()].copy()
        df['ds'] = pd.to_datetime(df['ds'])
        self.set_scales(df)
        df['t'] = self.scale_t(df['ds'])
        df['y_scaled'] = self.scale_y(df['y'])
        self.set_history(df)
        self.set_changepoints(df)
        self.set_pools(df)

        features = self.make_regressor_features(df)
        pooling_features = self.make_pooling_features(df)
        init = self.get_init(df)
        data = {
            'T': df.shape[0],
            'K': features.shape[1],
            'S': self.changepoints.shape[0],
            'D': pooling_features.shape[1],
            'P': self.num_pools,
            't': df['t'],
            'y': df['y_scaled'],
            'X': features,
            't_change': self.changepoints,
            'p': pooling_features + 1,
        }

        def init_func():
            return {
                'k_mu': init['k'],
                'm_mu': init['m'],
                'beta_mu': np.zeros(features.shape[1]),
                'k': np.full((pooling_features.shape[1], self.num_pools), init['k']),
                'm': np.full((pooling_features.shape[1], self.num_pools), init['m']),
                'beta': np.zeros((pooling_features.shape[1], self.num_pools, features.shape[1])),
                'delta': np.zeros(self.changepoints.shape[0]),
                'sigma_obs': 1,
            }

        try:
            self.params = self.stan_model.optimizing(
                data=data,
                init=init_func,
                iter=4000,
            )
        except RuntimeError:
            self.params = self.stan_model.optimizing(
                data=data,
                init=init_func,
                iter=100,
                algorithm='Newton',
            )

    def predict(self, df):
        df = df[df['ds'].notnull()].copy()
        df['ds'] = pd.to_datetime(df['ds'])
        df['t'] = self.scale_t(df['ds'])

        ts = np.tile(np.expand_dims(df['t'], axis=1), (1, self.changepoints.shape[0]))
        changepoints = np.tile(self.changepoints, (df.shape[0], 1))
        a = ts >= changepoints
        b = a * changepoints

        features = self.make_regressor_features(df)
        pooling_features = self.make_pooling_features(df)

        k, m, beta, delta = self.params['k'], self.params['m'], self.params['beta'], self.params['delta']
        p_yhat = np.zeros((pooling_features.shape[1], df.shape[0]))
        for d in range(pooling_features.shape[1]):
            p_k = np.zeros(df.shape[0])
            p_m = np.zeros(df.shape[0])
            p_beta = np.zeros((df.shape[0], features.shape[1]))
            for i in range(df.shape[0]):
                p_k[i] = k[d, pooling_features[i, d]]
                p_m[i] = m[d, pooling_features[i, d]]
                p_beta[i, :] = beta[d, pooling_features[i, d], :]
            p_yhat[d, :] = \
                (p_k + np.dot(a, delta)) * df['t'] + \
                (p_m - np.dot(b, delta)) + \
                np.einsum('ij,ij->i', features, p_beta)
        yhat_scaled = np.dot(p_yhat.transpose(), self.params['theta']).reshape(-1)
        yhat = self.unscale_y(yhat_scaled)

        sigma = self.params['sigma_obs']
        yhat_lower_scaled = yhat_scaled + norm.ppf(0.1, scale=sigma)
        yhat_lower = self.unscale_y(yhat_lower_scaled)
        yhat_upper_scaled = yhat_scaled + norm.ppf(0.9, scale=sigma)
        yhat_upper = self.unscale_y(yhat_upper_scaled)

        return pd.DataFrame({
            'ds': df['ds'],
            'yhat': yhat,
            'yhat_lower': yhat_lower,
            'yhat_upper': yhat_upper,
        })
