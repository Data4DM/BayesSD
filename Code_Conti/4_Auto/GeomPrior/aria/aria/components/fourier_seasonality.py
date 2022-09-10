import datetime

import numpy as np
import pandas as pd

from aria.core.components import Component


class FourierSeasonality(Component):
    def __init__(self, period, order, scale=10., name=None):
        name = name if name is not None else f'FS({period},{order})'
        super().__init__(name)
        self.period = period
        self.order = order
        self.scale = scale

    def get_features_list(self):
        return [
            f'{self.name}-{name}_{i + 1}'
            for i in range(self.order)
            for name in ('sin', 'cos')
        ]

    def get_features(self, df):
        t = (df['ds'] - datetime.datetime(1970, 1, 1)).dt.total_seconds().astype(np.float) / (3600. * 24.)
        features = np.array([
            fun((2.0 * (i + 1) * np.pi * t / self.period)) * self.scale
            for i in range(self.order)
            for fun in (np.sin, np.cos)
        ])
        return pd.DataFrame(index=df.index, columns=self.get_features_list(), data=features.transpose())
