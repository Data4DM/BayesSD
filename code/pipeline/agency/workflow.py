import matplotlib.pyplot as plt
import pandas as pd
import xarray as xr
import arviz as az
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D
import numpy as np
import pandas as pd
import seaborn as sns
from util import *
from iter import *

def iter_agency(ITER, disagg='by_ts', time_resol = 'DATECODE', space_resol = '3AGY'): #df, iter, is_imgrt = False
    set_dir_agencydata()
    # checking_out:
    # dirty check on prior for forming_size_share, differentiate signal and noise
    # - outing(x) in film titled #episode5.1, 2001-01-01, NaN
    # - agencies with one employee or span only two years among 24 years
    # - newly developed engines 

    # forming_size_share:
    # - hierarchize: str, ining, iding_mutant, plotting
    # - merge: prior + likelihood : merge existing + new info

    # checking_in:
    # first check on prior for opt out: 
    # - outing(x) in film titled #episode5.1
    # - too small agencies filter out? (differentiate signal and noise)

    # projecting: 
    # - summary statistics (ratio)
    if disagg == "by_t": # entire gov by time, no branching (i.e.checking) needed
        iter_input =   {'plotting':'forming_size_share','forming_size_share':'preparing'}
    elif disagg == "by_s":
        iter_input =   {'plotting':'forming_cluster','forming_cluster':'checking_in', 'checking_in':'forming_size_share','forming_size_share':'checking_out','checking_out':'preparing'}
    elif disagg == "by_ts":
        iter_input =   {'plotting':'forming_cluster','forming_cluster':'checking_in', 'checking_in':'forming_size_share','forming_size_share':'checking_out','checking_out':'preparing'}
    
    TIME_YEAR = [str(i) for i in np.arange(1998, 2022, 1)]
    TIME_MONTH = ["09"] #, "12"]
    time_lst = [year + month for year in TIME_YEAR for month in TIME_MONTH]
    feature =['DATECODE','SALARY', 'EMPLOYMENT']

    if ITER == 'preparing': #load data to use
        # marginalize over agencies; projection on time hetero, # marginalize over years; projection on space hetero
        # compare (by_t, by_ts) specific shruken agency, (by_s, by_ts): tumultous time after2008
        iter_preparing(time_lst, feature, ITER)

    elif ITER == 'checking_out': # exclude bottom 5
        if disagg=='by_t':
            print("pass: disagg by time cannot do checking") #raise NotImplementedError
        else:
            iter_checking(iter_input[ITER],ITER, disagg)

    elif ITER == 'forming_size_share':
        iter_forming(iter_input[ITER], ITER, disagg, time_resol, space_resol) # hierarchize and make features 
        # groupby agency or agencysub, to summarize its size an share within

    elif ITER == 'checking_in': # include bottom 5
        if disagg=='by_t':
            print("pass: disagg by time cannot do checking") #raise NotImplementedError
        else:
            iter_checking(iter_input[ITER], ITER, disagg)
        # individual: `is_mng`
        # agency: individual, `is_top1`, `is_top10`, `is_top25`  across time, space

    elif ITER == 'forming_cluster':
        if disagg=='by_t':
            print("pass: disagg by time cannot form cluster as space is homogenous") #raise NotImplementedError
        else:
            iter_forming(iter_input[ITER], ITER, disagg, time_resol, space_resol) # hierarchize and make features 
        
        # groupby agency or agencysub, to summarize its size an share within

    elif ITER == 'plotting':
        iter_plotting(iter_input[ITER], ITER, disagg)    


if __name__ == "__main__":
    # workflow = [ 'forming_cluster', 'plotting'] #'checking_out','checking_in',
    # for w in workflow:
    #     iter_agency(ITER = w, disagg='by_ts')
    # workflow = ['forming_size_share','checking_in','forming_cluster', 'plotting']
    # for w in workflow:
    #     iter_agency(ITER = w, disagg='by_ts', space_resol = '4AGYSUB')


    # workflow = ['plotting'] #'forming_size_share','checking_in','forming_cluster', 
    # for w in workflow:
    #     #iter_agency(ITER = w, disagg='by_s')
    #     iter_agency(ITER = w, disagg='by_t')
    #     #iter_agency(ITER = w, disagg='by_ts')
    workflow = ['checking_out', 'forming_size_share','checking_in','forming_cluster', 'plotting']
    for w in workflow:
        iter_agency(ITER = w, disagg='by_s')