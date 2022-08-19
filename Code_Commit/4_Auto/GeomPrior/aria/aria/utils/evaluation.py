import numpy as np
from scipy.stats import norm

from aria.core.models import Model


def mape(a, b):
    return np.mean(np.abs(a - b) / (np.abs(a)))


def smape(a, b):
    return np.mean(np.abs(a - b) / ((np.abs(a) + np.abs(b)) / 2))


def rmse(a, b):
    return np.sqrt(np.mean((a - b) ** 2))


def bic(m: Model, df):
    x, y = df['y'], m.predict(df)['yhat']
    log_lik = np.sum(norm.logpdf(x - y, scale=rmse(x, y)))
    return (len(m.get_features_list()) + 1) * np.log(df.shape[0]) - 2 * log_lik
