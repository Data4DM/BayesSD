import pysd
import pandas as pd
import random
random.seed(100)
customer_order_rate = pd.read_csv('data/example_retail_sales.csv')

model_gen = pysd.read_vensim('vensim_models/optimization/InventoryManagementWeek5-Generator.mdl')
model_est = pysd.read_vensim('vensim_models/optimization/InventoryManagementWeek5-Estimator.mdl')

data_gen = model_gen.run()
data_est = model_est.run()

## TODO STORY BOARD
# GOAL: optimize payoff w.r.t. inventory adjustment time, minimum ordering processing time
# data_gen = model_gen.run(params={'customer order rate': customer_order_rate}, return_timestamps = customer_order_rate.index, return_columns=['production start data', 'production data', 'shipment data'])

# payoff = model_est.run(params={'production start data': data_gen['production start data'],
#                       'production data': data_gen['production data'],
#                       'shipment data': data_gen['shipment data']})['Calibpayoff'])

# I found the following functions useful:
# model.set_components({'average lead time' : average_lead_time})

