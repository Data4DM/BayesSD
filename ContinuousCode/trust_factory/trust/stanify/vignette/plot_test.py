import arviz as az
from stanify.builders.utilities import get_data_path, get_plot_path
from stanify.calibrator.visualizer import plot_sbc_ecdf, plot_sbc_histograms, plot_recovery, plot_posterior_2d
import random
random.seed(10)
import warnings
warnings.filterwarnings('ignore')
model_name = "prey_predator_S2N20Q2R3"

sbc = az.from_netcdf(f"{get_data_path(model_name)}/sbc.nc")
print(sbc)
plot_sbc_histograms(sbc.posterior.prey_birth_frac, sbc.prior.prey_birth_frac, param_names = "prey_birth_frac")
#get_plot_path