import pandas as pd
from deprecated import deprecated


class Model:
    def __init__(self, components):
        self.components = components
        self.features_list = [name for component in components for name in component.get_features_list()]
        self.params = None

    def get_features_list(self):
        return self.features_list

    @deprecated
    def get_params_list(self):
        return self.get_features_list()

    def set_features_list(self, features_list):
        self.features_list = features_list

    @deprecated
    def set_params_list(self, params_list):
        self.set_features_list(params_list)

    def get_features(self, df):
        return pd.concat([
            component.get_features(df).reset_index()
            for component in self.components
        ], axis=1)[self.features_list]

    def get_params(self):
        return self.params

    def set_params(self, params):
        self.params = params

    def fit(self, df):
        raise NotImplementedError('Method not implemented')

    def predict(self, df):
        raise NotImplementedError('Method not implemented')
