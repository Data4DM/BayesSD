# aria

```python
import logging

import pandas as pd
from sklearn.preprocessing import StandardScaler

from aria.components.dataframe_regressor import DataFrameRegressor
from aria.components.fourier_seasonality import FourierSeasonality
from aria.components.linear_trend import LinearTrend
from aria.components.linear_trend_changepoints import LinearTrendChangepoints
from aria.datasets.example import load_data
from aria.models.forward_stepwise_selector import ForwardStepwiseSelector
from aria.models.linear_lasso import LinearLassoModel
from aria.models.linear_ridge import LinearRidgeModel
from aria.utils.evaluation import smape, bic

logging.getLogger().setLevel('DEBUG')

df = load_data('example_wp_log_peyton_manning.csv')
df['r'] = df['y'].shift(-5)
df.dropna(inplace=True)

n = int(df.shape[0] * 0.8)
train_df, test_df = df.iloc[:n], df.iloc[n:]

components = [
    LinearTrend(),
    LinearTrendChangepoints(),
    FourierSeasonality(7, 3),
    FourierSeasonality(30.4375, 5),
    FourierSeasonality(365.25, 10),
    DataFrameRegressor(df[['ds', 'r']], scaler=StandardScaler()),
]

print('LASSO')
m = LinearLassoModel(components=components, alpha=0.01)
m.fit(train_df)
print(pd.DataFrame(index=m.get_features_list(), data=m.get_params()))
print('SMAPE', smape(test_df['y'], m.predict(test_df)['yhat']))
print()

print('RIDGE')
m = LinearRidgeModel(components=components)
m.fit(train_df)
print(pd.DataFrame(index=m.get_features_list(), data=m.get_params()))
print('SMAPE', smape(test_df['y'], m.predict(test_df)['yhat']))
print()

print('SELECTING RIDGE with SMAPE')
n = int(train_df.shape[0] * 0.8)
selection_train_df, selection_test_df = train_df.iloc[:n], train_df.iloc[n:]
s = ForwardStepwiseSelector(LinearRidgeModel, components, max_features=20,
                            evaluation_strategy='drop',
                            evaluator=ForwardStepwiseSelector.simple_evaluator(smape, selection_test_df))
s.fit(selection_train_df)
m = s.predict(train_df)
print(pd.DataFrame(index=m.get_features_list(), data=m.get_params()))
print('SMAPE', smape(test_df['y'], m.predict(test_df)['yhat']))
print()

print('SELECTING RIDGE with BIC')
s = ForwardStepwiseSelector(LinearRidgeModel, components, max_features=20,
                            evaluation_strategy='drop', evaluator=bic)
s.fit(train_df)
m = s.predict(train_df)
print(pd.DataFrame(index=m.get_features_list(), data=m.get_params()))
print('SMAPE', smape(test_df['y'], m.predict(test_df)['yhat']))
print()
```
