import numpy as np
import pandas as pd

from aria.core.components import Component


class HolidayRegressor(Component):
    def __init__(self, dates, ranges=None, scale=1., name='H'):
        super().__init__(name)
        self.scale = scale
        self.dates = dates
        self.ranges = ranges or [(0, 0)]

    def get_features_list(self):
        return [
            f'{self.name}-{from_offset},{to_offset}'
            for from_offset, to_offset in self.ranges
        ]

    def get_features(self, df):
        features = []
        for from_offset, to_offset in self.ranges:
            dates = pd.concat([
                self.dates + pd.Timedelta(days=offset)
                for offset in range(from_offset, to_offset + 1)
            ]).unique()
            features.append(np.where(df['ds'].isin(dates), self.scale, 0.) + 0.00001 * np.random.rand(df.shape[0]))
        return pd.DataFrame(index=df.index, columns=self.get_features_list(), data=np.array(features).transpose())
