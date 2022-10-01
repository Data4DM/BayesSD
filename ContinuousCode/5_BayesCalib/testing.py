from stanify.builders.stan.stan_model import StanVensimModel
from pysd.translators.vensim.vensim_file import VensimFile
import pandas as pd
am = VensimFile("vensim_models/mngChain/InventoryManagementWeek5-Generator_datalookupImport.mdl")
am.parse()
am = am.get_abstract_model()

obs_stock_df = pd.read_csv('data/hudson-bay-lynx-hare.csv')
n_t = obs_stock_df.shape[0] - 1
n_firm = 2 # for hierarchical model

# Draws2Data
# value inside obs_stock_df doesn't matter (placeholder)
data_draws2data = {
    "n_t": n_t,
    "n_firm": n_firm,
    "work_in_process_inventory_obs":  obs_stock_df.loc[1:, 'Predator'].values.tolist(),
    "inventory_obs":  obs_stock_df.loc[1:, 'Prey'].values.tolist(),
    "Initial Customer Order Rate Data": list(range(n_t))
}

model = StanVensimModel("mngInven_lookup", am, 0.0, list(range(1, n_t + 1)), data_dict = data_draws2data)

model.build_stan_functions()

model.set_prior("inventory_adjustment_time", "normal", 2, 0.4)  # heuristic of 1/5
model.set_prior("minimum_order_processing_time", "normal", 0.05, 0.01)
model.set_prior("phi", "inv_gamma", 2, 0.1)

model.set_prior("work_in_process_inventory_obs", "lognormal", "work_in_process_inventory", "sigma")
model.set_prior("inventory_obs", "lognormal", "inventory", "sigma")
model.set_prior("work_in_process_inventory_obs", "neg_binomial_2", "work_in_process_inventory", "phi")
model.set_prior("inventory_obs", "neg_binomial_2", "inventory", "phi")

