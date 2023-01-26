import os
import pandas as pd
import random
import string
random.seed(100)
import matplotlib.pyplot as plt

def set_dir_agencydata():
    os.chdir("/Users/hyunjimoon/Dropbox/tolzul/BayesSD/code/lift_dynamics/data/agency")
    #os.chdir(os.getcwd() + "/data/agency")

def get_plot_path(model_name):
    plot_path = f"..plot/{model_name}/"
    if not os.path.exists(plot_path):
        os.makedirs(plot_path)
    return plot_path

def get_data_path(model_name):
    data_path = f"data/{model_name}/"
    if not os.path.exists(data_path):
        os.makedirs(data_path)
    return data_path

def txt2df(time, filename):
    set_dir_agencydata()
    if filename == "FACTDATA":
        if time[-2:] == "12":
            filename = filename + "_DEC" + time[:4]
        elif time[-2:] == "09":
            filename = filename + "_SEP" + time[:4]
    df = pd.read_csv(f'fed_orig/{time}/{filename}.txt', header=0, low_memory=False)
    # df.to_xarray().to_netcdf(f"{filename[:-4]}.nc")
    # nc_loc = []
    # nc_loc += filename[:-4] + ".nc"
    # return nc_loc
    return df

def save_iter(df, ITER, disagg='by_s', time_resol='DATECODE', space_resol='3AGY'):
    if ITER == 'preparing':
        print("###### ITER in_checking COMPLETE, size :", df.shape[0])
        print("txt2df, df merger, make is_mng feature")

    elif ITER == 'checking_out':
        print("###### ITER checking_out COMPLETE, size :", df.shape[0])
        print("optimal aggregation level; even if we have AGYSUB info every mng in the same AGY are indistinguishable ")

    elif ITER == 'forming_size_share':
        print("###### ITER forming size_share COMPLETE, size :", df.shape[0])
        print("summarize size share")

    elif ITER == 'checking_in':
        print("###### ITER checking_in COMPLETE, size :", df.shape[0])

    elif ITER == 'forming_cluster':
        print("###### ITER forming_cluster COMPLETE, size :", df.shape[0])
        print("summarize ratio")

    elif ITER == 'plotting':
        print("###### ITER plotting COMPLETE")
        #save_fig(f"share_size_{disagg}")
        return

    df.to_pickle(f"{ITER}_{disagg}" + ".pkl")
    
def constrcut_xarray():
    xr_lst = []
    for TIME_YEAR in TIME_YEARS:
        for TIME_MONTH in TIME_MONTHS:
            hierarchize_org(TIME_YEAR + TIME_MONTH, features)
            xr_lst.append(pd.read_pickle(get_data_path(f'agency/{TIME_YEAR + TIME_MONTH}') + f'/{features}.pkl').to_xarray())
    agency98_21 = xr.concat([xr for xr in xr_lst], dim = "index") #47m
    agency_bytime = agency98_21.groupby('DATECODE')
    # Q1.from decreasing agytyp mean, (categorized into four as 1: 'Cabinet Level Agencies':  2: 'Large Independent Agencies (1000 or more employees)':  (categorized to 1-4 dep on absolute size) mean
    # Q2.manager ratio peaked during 20s and is falling
    mng_ratio = agency_bytime.mean() # 5is_mng count is the number of employee of each agency at each year - how to plot?
    org_size = agency_bytime.count() # Employement count is the number of employee of each agency at each year - how to plot?
