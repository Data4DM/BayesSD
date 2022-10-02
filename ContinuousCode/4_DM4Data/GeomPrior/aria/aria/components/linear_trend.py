import numpy as np
import pandas as pd

from aria.core.components import Component


class LinearTrend(Component):
    def __init__(self, m_scale=5., k_scale=5., name='LT'):
        super().__init__(name)
        self.m_scale = m_scale
        self.k_scale = k_scale

    def get_features_list(self):
        return [
            f'{self.name}-m',
            f'{self.name}-k',
        ]

    def get_features(self, df):
        features = np.array([
            np.full(df.shape[0], 1.) * self.m_scale,
            df['t'] * self.k_scale,
        ])
        return pd.DataFrame(index=df.index, columns=self.get_features_list(), data=features.transpose())
