import numpy as np
import pandas as pd
from sklearn.preprocessing import MinMaxScaler, MaxAbsScaler

from aria.core.models import Model


class LinearBaseModel(Model):
    def __init__(self, components, t_scaler=None, y_scaler=None):
        super().__init__(components)
        self.t_scaler = t_scaler if t_scaler is not None else MinMaxScaler()
        self.y_scaler = y_scaler if y_scaler is not None else MaxAbsScaler()
        self.beta = None

    def fit(self, df):
        df = pd.DataFrame({
            'ds': pd.to_datetime(df['ds']),
            't': self.t_scaler.fit_transform(df[['ds']].apply(pd.to_datetime)).flatten(),
            'y': self.y_scaler.fit_transform(df[['y']]).flatten(),
        })

        for component in self.components:
            component.fit(df)

        features = self.get_features(df)
        if features.shape[1]:
            self.beta = self.fit_linear(features, df['y'])
            self.set_params(self.beta)

    def fit_linear(self, features, y):
        raise NotImplementedError('Method not implemented')

    def predict(self, df):
        df = pd.DataFrame({
            'ds': pd.to_datetime(df['ds']),
            't': self.t_scaler.transform(df[['ds']].apply(pd.to_datetime)).flatten(),
        })

        features = self.get_features(df)
        if features.shape[1]:
            yhat = features.to_numpy() @ self.beta
        else:
            yhat = np.zeros(df.shape[0])

        return pd.DataFrame({
            'ds': df['ds'],
            'yhat': self.y_scaler.inverse_transform(yhat.reshape(-1, 1)).flatten(),
        })
