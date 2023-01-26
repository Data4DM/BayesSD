import matplotlib.pyplot as plt
import pandas as pd
from util import *
import string

def iter_preparing(ITER, frac):
    old_title = pd.read_csv('old_title.csv', keep_default_na=False, na_values=["NULL"])
    old_title.columns = ['id', 'title','imdbIndex','kindID', 'year', 'imdbID',
                         'phoneticCode', 'episodeOfID', 'seasonNr', 'episodeNr', 'seriesYears']#(, 'md5sum'])
    old_title = old_title.loc[:, ['title', 'year']]          

    new_title_aka = pd.read_csv('new_movie_akas.tsv', sep='\t', keep_default_na=False, na_values=["\\N"])
    new_title_basic = pd.read_csv('new_movie_basics.tsv', sep='\t', keep_default_na=False, na_values=["\\N"])
    new_title_basic = new_title_basic.rename(columns = {'originalTitle': 'title', 'startYear': 'year'}) 
    
    new_title_basic_cols = ['tconst', 'title', 'year', 'titleType'] # primaryTitle: 4.2m < originalTitle: 4.3m; going with originalTitle
    new_title_aks_cols = ['tconst',  'title', 'region']
    
    main = "outer"
    if main == "basic_major":
        new_title = pd.merge(new_title_basic[new_title_basic_cols], new_title_aka[new_title_aks_cols], on=('tconst', 'title' ), how = "left").loc[:, ['tconst', 'title', 'year', 'region', 'titleType']] #11m
    elif main == "outer": # primaryTitle: 4.2m < originalTitle: 4.3m; going with originalTitle
        new_title = pd.merge(new_title_basic[new_title_basic_cols], new_title_aka[new_title_aks_cols], on=('tconst', 'title'), how = "outer").loc[:, ['tconst', 'title', 'year', 'region', 'titleType']] #40m

    save_iter(sel_rows_random(old_title, frac=frac), ITER, is_imgrt = True) #imgrt_title.shape[0] 1.7m
    save_iter(sel_rows_random(new_title, frac=frac), ITER, is_imgrt = False) #ntv_title.shape[0] 10m

def iter_checking(ITER_IN, ITER):
    if ITER == 'checking_out':
        old_title = pd.read_pickle('old_title.pkl')
        new_title = pd.read_pickle('new_title_ba_outer.pkl')

        imgrt_title = sel_year(sel_title(old_title, ITER), ITER)
        ntv_title = sel_year(sel_title(new_title, ITER, is_imgrt=False), ITER, is_imgrt=False)
        optout_nonus_ntv_title = sel_region(ntv_title)

        save_iter(imgrt_title, ITER, is_imgrt = True) #imgrt_title.shape[0] 1.7m
        save_iter(optout_nonus_ntv_title, ITER, is_imgrt = False) #ntv_title.shape[0] 10m
    elif ITER == 'checking_in_gane_eng':
        mo = pd.read_pickle(f'{ITER_IN}' + ".pkl")

        mo_eng = sel_title(mo, ITER)  # sel_region(sel_title(mo, ITER))
        # sel_title(mo)[sel_title(mo).titleId.isnull()]: #77k -> 93k after making 가내수공업개발
        # mo_eng_usnull = mo_eng[(mo_eng.region == 'US') | mo_eng.region.isnull()] #3m
        # other ining criteria can exist -> ITER = '3ining_{cirteria}'
        save_iter(mo_eng, ITER)
def iter_forming(ITER_IN, ITER):
    if ITER == 'forming_merge':
        imgrt_title = pd.read_pickle(f'{ITER_IN}_imgrt_title.pkl')
        ntv_title = pd.read_pickle(f'{ITER_IN}_ntv_title.pkl')
        def combine_col2id(df):
            imgrt_ty = df.assign(
                imgrt_tyid=df.index.to_series().groupby(
                    [df.title, df.year]
                ).transform('first').map('tyid{}'.format)
            )[['imgrt_tyid'] + df.columns.tolist()]
            return imgrt_ty
        def merge_title(imgrt_title, ntv_title):
            mo = pd.merge(imgrt_title, ntv_title, on=('title', 'year'), how='outer')  # 2m
            mo.drop_duplicates(subset=['imgrt_tyid', 'tconst'], keep='first', inplace=True, ignore_index=True)
            mo.reset_index(inplace=True)
            outer_columns = ['index', 'imgrt_tyid', 'title', 'year', 'tconst']
            return mo

        mo = merge_title(combine_col2id(imgrt_title), ntv_title) #입국사무소통과후 원주민과 조인

    elif ITER == 'forming_id':
        mo = pd.read_pickle(f'{ITER_IN}' + ".pkl")
        def separate_mutant_common_nativeEx(df):
            df.loc[df.tconst.isnull(), 'gene'] = 'mutant'
            df.loc[df.tconst.isnull(), 'gene'] = 'native_ex'
            df.loc[(~df.imgrt_tyid.isnull()) & (~df.tconst.isnull()), 'gene'] = 'common'
            return df

        mo = separate_mutant_common_nativeEx(mo)

    save_iter(mo, ITER)

def iter_plotting(ITER_IN, ITER):
    mo_mut_com_ne = pd.read_pickle(f'{ITER_IN}' + ".pkl")
    mutant = mo_mut_com_ne[mo_mut_com_ne.gene == 'mutant']
    mutant.year.hist()
    #mutant.groupby('year').count().sort_values(by = 'index', ascending=False)
    save_iter(mutant, ITER)

# TODO: @Dashadower how to design when input is differetn for each iter
def save_iter(df, iter, is_imgrt = False):
    if (iter == 'preparing') or (iter == 'checking_out'):
        if is_imgrt:
            df.to_csv(f"{iter}_imgrt" + ".tsv", sep = '\t')
        else:
            df.to_csv(f"{iter}_ntv" + ".tsv", sep = '\t')
    else:
        df.to_csv(f"{iter}" + ".tsv", sep = '\t')

    if iter == 'preparing':
        print("###### ITER perparing COMPLETE, size :", df.shape[0])
        if is_imgrt:
            df.to_pickle("old_title.pkl")
        else:
            df.to_pickle("new_title_ba_outer.pkl")        

    elif iter == 'checking_out':
        print("###### ITER outing COMPLETE, size :", df.shape[0])
        if is_imgrt:
            df.to_pickle(f'{iter}_imgrt_title.pkl')
        else:
            df.to_pickle(f'{iter}_ntv_title.pkl')

    elif iter == 'forming_merge':
        print("###### ITER merging COMPLETE, size :", df.shape[0])
        print("from merged table, only mutant's `tconst` is na, only ntv_ex's `imgrt_tyid`is na")
        print("rows with tconst should include nonenglish term\n")
        df.to_pickle(f'{iter}' + ".pkl")

    elif iter == 'checking_in_gane_eng':
        print("###### ITER ining_gane_eng COMPLETE, size :", df.shape[0])
        print("optin english-like titles")
        df.to_pickle(f'{iter}' + ".pkl") #df.set_index('tconst').to_xarray().to_netcdf("3opting_merged_title_eng_title.nc")

    elif iter == 'forming_mutant_id':
        print("###### ITER iding_mutant COMPLETE, size :", df.shape[0])
        df.to_pickle(f'{iter}' + ".pkl") #df.set_index('tconst').to_xarray().to_netcdf("4diff_only_imgrt_title.nc")

    elif iter == 'plotting':
        plt.savefig('mutant.png')

def sel_title(df, iter, is_imgrt=True):
    """"
    series of title from which any title that include at least one elemnet of character would be filtered
    iter:1 quick, dirty, opt-out way preprocessing
    iter:2 detailed e.g. title language, more crafty, opt-in way preprocessing
    """
    if iter == 'checking_out':
        df = df[~df.title.isnull()]  # 11k na for imgrt title, 0 na for ntv title
        if is_imgrt:
            for char in ['#', '-0', '-1', 'Final', 'Pilot', 'Episode']:
                df = df[~df['title'].str.contains(f"{char}", na=False)]
        else:
            for char in ['#', '-0', '-1', 'Final', 'Pilot', 'Episode']:
                df = df[~df['title'].str.contains(f"{char}", na=False)] 
                # 11,578,172 -> 11,555,926 (optout Final), 11,545,080 (optout Pilot) -> 5m (oputout #, Episode)
    elif iter == 'checking_in_gane_eng':
        df['soft_eng'] = df.title.apply(lambda x: is_english(x))
        df = df[df.soft_eng == True]

    elif iter == '3ining_opensource_eng': #detect("Overdrive") # not very precise
        raise NotImplementedError #df['strong_eng'] = df.title.apply(lambda x: detect(x))  # "Anajigoku" pass iter2, fail iter3 (sw)
    return df


def sel_year(df, iter, is_imgrt=True):
    """"
    series of title from which any title that include at least one elemnet of character would be filtered
    iter:1 WEAK quick, dirty, opt-out way preprocessing for merging imgrt and ntv
    iter:2 STRONG detailed e.g. title language, more crafty, opt-in  preprocessing
    """
    if iter == 'checking_out':
        df = df[~df['year'].isnull()]
        if is_imgrt:
            df.year = df.year.astype('int')
        else:
            df.year = df.year.astype('int')
            df.loc[:, 'year'] = df.year.apply(lambda x: int(x) if str(x).isnumeric() else -1)
            df = df[df.year > 0]  # 170k
    elif iter == 'checking_in_gane_eng' or iter == '3ining_opensource_eng':
        raise NotImplementedError
        # # title by year
        # df = df[df.year == year]
    return df


def sel_region(df):
    nonus_lst = ['PT', 'SE', 'JP', 'IN', 'AU', 'GB', 'FR', 'ZA',
       'NG', 'CA', 'NL', 'CM', 'XWG', 'AR', 'NO', 'IT', 'HR', 'MX', 'PL',
       'BR', 'BE', 'FI', 'GR', 'AT', 'ES', 'CH', 'DE', 'UA', 'CL', 'MY',
       'PH', 'IE', 'NZ', 'CSHH', 'MT', 'DK', 'RO', 'SI', 'CU', 'XYU',
       'SG', 'EG', 'AE', 'HU', 'BA', 'PK', 'IL', 'SZ', 'LV', 'HK', 'IR',
       'EC', 'KR', 'YUCS', 'BD', 'LB', 'CN', 'RU', 'GE', 'DDDE', 'SK',
       'TR', 'CZ', 'ZM', 'LI', 'XWW', 'UY', 'MA', 'PS', 'TH', 'KE', 'VE',
       'PE', 'ID', 'RS', 'DO', 'BG', 'PR', 'TW', 'JM', 'DZ', 'MO', 'LT',
       'CO', 'BH', 'IS', 'XKV', 'TG', 'TN', 'MD', 'SN', 'LK', 'SV', 'UZ',
       'BUMM', 'BW', 'CR', 'HT', 'PY', 'SUHH', 'PA', 'MU', 'CI', 'SY',
       'AF', 'AL', 'NP', 'VN', 'MZ', 'AM', 'BF', 'ZW', 'RW', 'GH', 'KZ',
       'BI', 'LA', 'AN', 'VDVN', 'TZ', 'MK', 'KG', 'GP', 'LU', 'EE', 'HN',
       'SA', 'BO', 'BY', 'JO', 'TJ', 'CF', 'ML', 'UG', 'QA', 'CY', 'NI',
       'KW', 'MV', 'CSXX', 'GI', 'TT', 'GT', 'KP', 'ET', 'AZ', 'ME', 'AO',
       'XSA', 'VI', 'MN', 'FJ', 'KH', 'XEU', 'GF', 'GL', 'IQ', 'OM', 'CD',
       'MM', 'LS', 'MG', 'AG', 'SR', 'BS', 'XKO', 'BM', 'AW', 'GU', 'SD',
       'NE', 'PG', 'BB', 'GA', 'YE', 'GY', 'XPI', 'FO', 'XSI', 'GN', 'MQ',
       'LY', 'SO', 'BZ', 'SL', 'BT', 'MS', 'AS', 'NU', 'TD', 'GW', 'LC',
       'MC', 'TM', 'MR', 'BJ', 'CG', 'VA', 'SM', 'ER', 'XAS', 'AD', 'NC',
       'VC', 'RE', 'VU', 'MW', 'TO', 'CK', 'PF', 'KY', 'ZRCD', 'CV', 'CW',
       'VG', 'AQ', 'GM', 'TL', 'GQ', 'PW', 'AI', 'DM', 'IM', 'LR', 'NR',
       'DJ', 'MP', 'SB', 'ST', 'BN', 'KN', 'TC', 'SC', 'SH', 'GD', 'CC',
       'MH', 'KI', 'KM', 'EH', 'FM']
    return  df[~df['region'].isin(nonus_lst)]


def sel_rows_random(df, frac):
    if frac < 1:
        return df.sample(frac=frac)
    else:
        return df


def is_english(word):
    """
    the followings are TRUE
    # exclude: 4½, 11½, 39 ½, ¡1990!, 3... 2... 1, 
    # include: +0043-,22:43,31,<--->, 9-9-81,2011 03 19,9/11,(___),00:10, 50-50, 1/2, 0300 - 0430,
                    "A few good man 2", "Wall-e", "9:00""9:00", "What Is God's Eternity?", "W@anker"
    "angie';;;kdoi#422s anger <--->$400,000(2013,00,1875,1980,1981,11/11/11,11/11/11,11/11/11,199,355,99,7211,1,8,065,270,W@anker,09.12.04.,'77,285,092,1996,1974
        "A few good man 2", "Wall-e", "9:00""9:00", "What Is God's Eternity?", "W@anker"
    "angie';;;kdoi#422s anger <--->$400,000(2013,00,1875,1980,1981,11/11/11,11/11/11,11/11/11,199,355,99,7211,1,8,065,270,W@anker,09.12.04.,'77,285,092,1996,1974
    
    # 505,1993,324,4½,11½,329,1988,1988,161,067,141,12:21,$9.99,00:01:18,241,8/10000,422,1997,1.52,2@2,81,1/365,3,008, 5,251,024,027,3:19,600 - 115,010,
    # $600,000,$600,000,24/7,234,215,487,332,332,1-9,7/8,22:43,31,
    # 9:03, 145, 063, 30 1/2, 5:55, 3+1=1, 15:30:03, 180, 999, 422, 271, 107,107,315,12,02,100%,235,86,009,1.60,$1.11,19., 115,15,290,4.0,555
    # 4.0,555,<--->,457,1962,118,11,339,010101,18,50,$1,000,000,$1,000,000,266,3601,2001,5,249,054,025,1945,248,304
    # $300,000, $300,000,$300,000,$300,000,$300,000
    # 377, 154,1984,1984,1981,1992,1992,341,295,344,1+1=2,1+1+1,259,45,09:21:25,059,111,165,129,450,20/2/1991,
    # 8,08/15,307,8,$200,000,$200,000,148,4,4,4,12:00,424,7002,299,299,427,427,$400,000,$400,000,$400,000,$400,000,$400,000
    # $1,000,000,48,109,3:18,1973,1973,251,301,301,301,10.09.09,360 º,69,102,323,220,71,13:30,402,13:04,$3.52,47,26,1:0,26/9 1994,230,461,020,
    # 1918,1998,1998,$900,000,$900,000,25/01/95,1930,50/50,Chantal@avro.nl,1821,1821,077,1.65,100,29,3461,'49-'17,326,1567 - 1568,460,214,1950,
    # (2013,00,1875,1980,1981,11/11/11,11/11/11,11/11/11,199,355,99,7211,1,8,065,270,W@anker,09.12.04.,'77,285,092,1996,1974
    # 179, "301, 302",1968,1968,120,(2004,Ded@ns,26/9/1991,2184,25,405,1505,070,1992,1992,1972,49?,"5, 10, 15"
    # $400,000,156,0,999,42,911,217,11:11,114,114,1988,1987,1987,"0,08", 103109,2011 05 26,5,5,5,410,410,1.56,52,52,531,1949- 1959,00.000,50,76,142,
    # 66,50-50,8:00,789,10-57,2012,2012,2012,2012,2012,84,312,4.255,1915,10:10,25/7,541-69-96,5/31,103,20:10,201,2+2=3,73,73,19,100,1982,39,Midnatt@nrk,411,1974,80,1983,1983,11:50,
    # 4:37,1993,1993,1893,19084,322,322,1977,1977,22,342,2+1,091,105,105,207,1:42.08,10:00,1968,326,126,2038,8090,'11',2/16/12,238,3187345,206,1997,1997,19-2,¡1990!,(2012,6500,
    # 120,$,325,1674,23,88,2012,2012,42 1/2, 32, 1/3,10:48,22,22,1959,094,22:22,40,40,218,157,16/9/1991,474,101,79,.73, 2012,2012,2012,2012,725,173,344,5,5,5,5,
    # 1978,302,119,87,080,1.33,977,1.51,1925,21,167,500 & 5,14,69,155,1968,1968,+0043-,$300,000,$300,000,$300,000,$300,000, 1/20,183,2011 03 19, 24/604, 1978, 9:00, 066, (1972

    """
    eng_charc = f"{string.ascii_lowercase + string.ascii_uppercase}" + "0123456789" + " !_-=@#$%&*()/?+:;.,$<>" + "'"
    return len(set([i for i in word] + [e for e in eng_charc])) == 52 + 10 + 23

################## ITER IMMIGRTE: MUTANT + NATIVE #############################

# def optout_duplicated(df):
#     unique = df[~df.duplicated(['imgrt_tyid'], keep=False)]
#     duplicated_first = df[df.duplicated(['imgrt_tyid'], keep='first')]
#     return pd.concat([unique, duplicated_first])


def mutant2tconst(df):
    # separate (title, year)-based identifying system for type (e.g. movie and tvsyste)
    # df[df.titleType == 'tvEpisode'].groupby()
    tvEpisode = df[df.titleType=='tvEpisode']
    short = df[df.titleType=='short']
    movie = df[df.titleType=='movie']
    
    tvEpisode = tvEpisode.drop_duplicates('title', keep='first')
    short = short.drop_duplicates(['title', 'year'], keep='first')
    movie = movie.drop_duplicates(['title', 'year'], keep='first')
    # for movie and short, groupby(title) and year +-1 should be munged
    print(tvEpisode.shape[0], short.shape[0], movie.shape[0])
        
    return tvEpisode, short, movie