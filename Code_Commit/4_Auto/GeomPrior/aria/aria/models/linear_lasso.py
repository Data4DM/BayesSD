from sklearn.linear_model import Lasso

from aria.models.linear_base import LinearBaseModel


class LinearLassoModel(LinearBaseModel):
    def __init__(self, *args, alpha=1.0, **kwargs):
        super().__init__(*args, **kwargs)
        self.alpha = alpha

    def fit_linear(self, features, y):
        m = Lasso(fit_intercept=False, alpha=self.alpha)
        m.fit(features, y)
        return m.coef_
