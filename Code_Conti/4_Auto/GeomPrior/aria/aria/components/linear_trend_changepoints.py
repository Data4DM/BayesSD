import numpy as np
import pandas as pd

from aria.core.components import Component


class LinearTrendChangepoints(Component):
    def __init__(self, n=20, limit=0.8, scale=0.05, name='LTC'):
        super().__init__(name)
        self.n = n
        self.limit = limit
        self.scale = scale
        self.changepoints = None

    def get_features_list(self):
        return [
            f'{self.name}-delta_{i}'
            for i in range(self.n)
        ]

    def fit(self, df):
        ts, te = df['t'].min(), df['t'].max()
        tl = ts + (te - ts) * self.limit
        self.changepoints = np.linspace(ts, tl, self.n + 1)[1:]

    def get_features(self, df):
        t = np.tile(np.expand_dims(df['t'], axis=1), (1, self.n))
        c = np.tile(np.expand_dims(self.changepoints, axis=0), (df.shape[0], 1))
        features = np.clip(t - c, 0., None) * self.scale
        return pd.DataFrame(index=df.index, columns=self.get_features_list(), data=features)
