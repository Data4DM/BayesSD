import numpy as np
import pandas as pd
from pandas_datareader import data as pdr
import yfinance as yf
from datetime import datetime
# Move to GeomPrior/aria `pip install -e ./`
from aria.models import ists
def download_prices_from_yf(ticker, start_date, end_date, label_list):
    yf.pdr_override()
    start_date = datetime.strptime(start_date, '%Y-%m-%d')
    end_date = datetime.strptime(end_date, '%Y-%m-%d')
    return pdr.get_data_yahoo(ticker, start_date, end_date)[label_list]

sp500 = download_prices_from_yf(start_date='2009-05-01', end_date='2021-01-01',
              ticker='^GSPC', label_list=['Adj Close'])
y = sp500.loc[:, 'Adj Close']
ists_instance = ists.ists()
table = ists_instance.classLikelihoodAll(y)
print(table)
# [-10, -10, -6.7140782115772595, -11.908130478279894, -10.895207136226766, -15.76066666272055, -10.170239968486179,
# -14.488833732672102, -15.579306430083225, -10.457553729379084, -10.792270331934976, -9.938492408933039,
# -9.003563063788656, -12.61006561004135, -26.850412717334034, -18.319155955179486, -10.959306129493248,
# -14.231153479228684, -11.391689594546996, -9.703496439254252, -13.10604580308197, -10.600857076084928,
# -6.928992856647591, -6.928992856647591, -10]

# returns the id of the class that given data is belong to after behavior classification ex.
class_id = ists_instance.getClassId(y)
print(class_id)
#2

# returns the period of the given data. ex.
period = ists_instance.getPeriod(y)

# applies exponential smoothing to the given data and returns the smoothed data. ex.
alpha = .25
smoothed_y = ists_instance.smooth(y, alpha)
print(smoothed_y)
# [ 877.52001953  884.95001221  889.6625061  ... 3710.56899075 3715.93675283
#  3756.07006836]

# normalizes the given data and returns the normalized data ex.
normalized_y = ists_instance.normalize(y)

# returns the id of the class used in the classification ex.
class_id = ists_instance.getClassIdByName('gr1da')
print(class_id)
# 7

class_name = ists_instance.getClassNameById(2)
print(class_name)
# plinr

#TODO # Need debugging!
# autocor_y = ists.autocorrelation(y)
# AttributeError: module 'aria.models.ists' has no attribute 'autocorrelation'

# instance creation is not needed
# ex. autocor_y = ists.autocorrelation(y) -> covariance(y) returns the covariance of the data ex.
autocor_y = ists.autocorrelation(y)
cov_y = ists.covariance(y, 1)
print(autocor_y)
print(cov_y)

