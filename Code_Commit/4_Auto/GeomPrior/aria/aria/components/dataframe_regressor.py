import pandas as pd

from aria.core.components import Component


class DataFrameRegressor(Component):
    def __init__(self, df, scale=1., scaler=None, name='DF'):
        super().__init__(name)
        self.scale = scale

        df = df.assign(ds=pd.to_datetime(df['ds']))
        if scaler:
            feature_df = df.drop(columns=['ds'])
            scaled_array = scaler.fit_transform(feature_df)
            scaled_df = pd.DataFrame(scaled_array, index=feature_df.index, columns=feature_df.columns)
            df = pd.concat([df[['ds']], scaled_df], axis=1)
        self.df = df

    def get_features_list(self):
        return self.df.drop(['ds'], axis=1).columns

    def get_features(self, df):
        return df[['ds']].merge(self.df, how='left', on='ds', left_index=True).drop(['ds'], axis=1) * self.scale
