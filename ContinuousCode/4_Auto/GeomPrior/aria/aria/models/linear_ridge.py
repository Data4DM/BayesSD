from sklearn.linear_model import Ridge

from aria.models.linear_base import LinearBaseModel


class LinearRidgeModel(LinearBaseModel):
    def __init__(self, *args, alpha=1.0, **kwargs):
        super().__init__(*args, **kwargs)
        self.alpha = alpha

    def fit_linear(self, features, y):
        m = Ridge(fit_intercept=False, alpha=self.alpha)
        m.fit(features, y)
        return m.coef_
