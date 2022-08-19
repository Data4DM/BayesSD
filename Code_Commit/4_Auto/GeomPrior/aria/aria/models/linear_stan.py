from pandas import np

from aria.models.linear_base import LinearBaseModel
from aria.utils.stan import get_stan_model


class LinearStanModel(LinearBaseModel):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.stan_model = get_stan_model('additive_model.stan')

    def fit_linear(self, features, y):
        data = {
            'T': y.shape[0],
            'K': features.shape[1],
            'y': y,
            'X': features,
        }

        try:
            params = self.stan_model.optimizing(
                data=data,
                iter=4000,
                init=lambda: {'beta': np.zeros(features.shape[1]), 'sigma_obs': 1},
            )
        except RuntimeError:
            params = self.stan_model.optimizing(
                data=data,
                iter=100,
                init=lambda: {'beta': np.zeros(features.shape[1]), 'sigma_obs': 1},
                algorithm='Newton',
            )

        return params['beta']
