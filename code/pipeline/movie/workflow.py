from util import * 
from iter import * 
import pandas as pd

def iter_title(iter, frac =1):
    set_dir_moviedata()
    iter_input =  {'forming_merge':'checking_out', 'checking_in_gane_eng':'forming_merge','forming_mutant_id':'checking_in_gane_eng','plotting':'forming_mutant_id'}
        
    if iter == 'preparing': #load data to use
        iter_preparing(iter, frac)

    elif iter == 'checking_out': #  "checking_out" DATA READ, CLEANING, OPT OUT SELECT ROWS
        iter_checking(iter_input[iter],iter)

    elif iter == 'forming_merge':
        iter_forming(iter_input[iter],iter)

    elif iter == 'checking_in_gane_eng': #SELECT ROWS: INFER title is ENG
        iter_checking(iter_input[iter],iter)
    
    elif iter == 'forming_mutant_id': #IDENTIFY MUTANT 
        iter_forming(iter_input[iter],iter)

    elif iter == 'plotting':
        iter_plotting(iter_input[iter],iter)


def iter_title_person():
    set_dir_moviedata()
    """
        DBTable('CompleteCast', #1.3m
            DBCol('id', INTCOL, notNone=True, alternateID=True),
            DBCol('movieID', INTCOL, index='idx_mid'),
            DBCol('subjectID', INTCOL, notNone=True, index='idx_sid'),
            DBCol('statusID', INTCOL, notNone=True)),
    """
    #old_title = pd.read_pickle("../data/movie/old_title.pkl")
    #old_person = pd.read_pickle("old_person.pkl")
    # old_title.columns = ['id', 'title','imdbIndex','kindID', 'year', 'imdbID',
    #                     'phoneticCode', 'episodeOfID', 'seasonNr', 'episodeNr', 'seriesYears', 'md5sum']

    new_person_name_movie = pd.read_pickle('new_person_basics.pkl')
    new_movie_person_character = pd.read_pickle('new_movie_principals.pkl')
    new_pm = pd.merge(new_person_name_movie, new_movie_person_character, on='nconst')
    np = new_pm[['nconst', 'tconst', 'category', 'characters']]
    pmc = np.loc[(np.category == 'actor') | (np.category == 'actress')] # 52m to 20m (1m movie - avg of 20?)
    pmc.to_pickle("new_person_movie_character.pkl")  # 52m

    return

def veva_title_person(df):
    """
    shows old data which shows at least a hundred person-title for Suits (2011), new data (movie-principals) include only 5 rows (for entire, not only season)
    https://github.com/Data4DM/BayesSD/issues/138#issuecomment-1381747922
    """
    # actor = pd.read_csv("../data/movie/actors.list.tsv", sep = '\t', encoding="utf-8", header=None).iloc[:, :3]
    # actress = pd.read_csv("../data/movie/actresses.list.tsv", sep = '\t', encoding="utf-8", header=None).iloc[:, :3]
    # person = pd.concat([actor, actress]) # 20m, 12m 
    # person.rename(columns = {0:'firstName', 1:'lastName', 2:'title'}, inplace=True)
    def remove_nickname(x):
        x = re.sub(' +', ' ', re.sub("'.*?'", "", x))
        return x.strip()

    def remove_jr(x):
        x = re.sub("([\(\[]).*?([\)\]])", "", x)
        return x.strip()

    def remove_episode(x):
        x = re.sub("\{.*?\}", "", x)
        return x.strip()

    def remove_tech_suffix(x):
        x = x.strip()
        if x.endswith("(V)"):
            x = x[:-3]
        elif x.endswith("(TV)"):
            x = x[:-4]
        elif x.endswith("(VG)"):
            x = x[:-4]
        return x

    def remove_year_suffix(x):
        # (2010/I~X) -> (2010)
        x = re.sub("/.*", ")",x)
        return x.strip()

    def acronym(x):
        w = str(x).split()
        if w[-1][0]=="'":
            return w[0][0] + w[-1][1]
        else:
            return w[0][0] + w[-1][0]
            
    def replace_child_parent(df, tid2ptid, drop_subset):
        df_ptid = df.merge(tid2ptid, on = 'tconst', how = 'left') 
        no_parent_df = df_ptid[df_ptid.parentTconst.isnull()]['tconst']
        df_ptid.loc[df_ptid.parentTconst.isnull(), 'parentTconst'] = no_parent_df
        if drop_subset == ['parentTconst']:
            new_df_ptid = df_ptid.loc[: ,['primaryTitle', 'startYear', 'parentTconst']].drop_duplicates(subset = drop_subset)
        elif drop_subset == ['parentTconst', 'nconst']:
            new_df_ptid = df_ptid.loc[: ,['nconst', 'ordering', 'category', 'parentTconst']].drop_duplicates(subset = drop_subset)
        print("from", df_ptid.shape, "to", new_df_ptid.shape)
        new_df_ptid.rename(columns = {'parentTconst': 'tconst'}, inplace = True)
        return new_df_ptid
    # person.to_pickle("person.pkl")
    #============================================================
    # person= pd.read_pickle("person.pkl")
    # person.dropna(inplace=True) #32666803 -> 32145887
    # person['firstName'] = person['firstName'].apply(remove_jr)
    # person['lastName'] = person['lastName'].apply(remove_nickname)
    # person = person[~(person.firstName =='') & ~(person.lastName =='')] # -> 32145726
    # person['primaryName'] = person['firstName'] + " "+ person['lastName']
    # person['title'] = person['title'].apply(remove_episode)
    # person['title'] = person['title'].apply(remove_tech_suffix) 
    # person['title_year'] = person['title'].apply(remove_year_suffix) # removes 217297 + 131698 + 41369 + 18196 + 9788 + 5833 + 3264 + 2112+ 1546 + 845(10) = 431948
    # old_person_title = person.loc[:,['title_year','primaryName']].drop_duplicates() #32145726- > 15863799
    # old_person_title['nm_acro'] = old_person_title['primaryName'].apply(acronym)
    # old_person_title.to_pickle("old_person_title.pkl")
    # #old_person_title = pd.read_pickle("old_person_title.pkl")

    tid2ptid = pd.read_csv("../data/movie/episode.tsv", sep = '\t').loc[:, ['tconst', 'parentTconst']]
    tid_tname = pd.read_csv("../data/movie/movie_basics.tsv", sep = '\t').loc[:, ['tconst', 'primaryTitle','startYear']]
    new_tid_tname = replace_child_parent(tid_tname, tid2ptid, drop_subset = ['parentTconst']) # from (9384224, 4) to (2385876, 3)
    new_tid_tname['title_year'] = new_tid_tname['primaryTitle'] + " (" + new_tid_tname['startYear'] + ")"  
    new_tid_tname.rename(columns = {'parentTconst': 'tconst'}, inplace = True)
    new_tid_tname = new_tid_tname.loc[:, ['tconst', 'title_year']]

    tid_pid = pd.read_csv("../data/movie/movie_principals.tsv", sep = '\t')
    tid_pid_act =tid_pid[(tid_pid.category == 'actor') | (tid_pid.category == 'actress')| (tid_pid.category == 'self')].loc[:, ['nconst', 'tconst', 'ordering', 'category']]
    new_tid_pid_act_ptid = replace_child_parent(tid_pid_act, tid2ptid, drop_subset = ['parentTconst', 'nconst'])  #from (29666179, 5) to (10318796, 4)

    pid_pname = pd.read_csv("../data/movie/person_basics.tsv", sep = '\t').loc[:, ['nconst', 'primaryName']]
    tid_pid_tname = new_tid_pid_act_ptid.merge(pid_pname, how = 'inner', on = 'nconst') #20m + 12m (merge_in: loss of -4k: 20537038 -> 20533189); p-t is more detailed

    new_person_title = new_tid_tname.merge(tid_pid_tname, how = 'inner', on = 'tconst') #10m
    new_person_title.drop(columns='primaryName', inplace=True)
    #new_person_title = pd.to_pickle("new_person_title.pkl")
    #new_person_title['nm_acro'] = new_person_title['primaryName'].apply(acronym)
    new_person_title.to_pickle("new_person_title.pkl")
    # new_person_title = pd.read_pickle("new_person_title.pkl")

    # oldnew_left = old_person_title.merge(new_person_title, how = 'left', on = ['nm_acro', 'title_year'])
    # old_only = oldnew_left[oldnew_left.tconst.isnull()]
    # oldnew_left.to_csv("oldnew_left.tsv", sep = '\t')
    # old_only.to_csv("old_only.tsv", sep = '\t') #14m out of 16m / 20m (with acronym, 13m), (with all category, 12m)


    # verifying old has much larger coverage with suits (2011)
    a = tid2ptid[tid2ptid.parentTconst == 'tt1632701'].tconst
    b = tid_pid[tid_pid.tconst.isin(a) & tid_pid.category.isin(['actor', 'actress', 'self'])]
    b.drop_duplicates(subset='nconst')


def veva_title(df):
    """
    verification: consistency between imgrt and ntv
    validation: consistency check with cinemagoer
    """
    # sample titleid = tt_random.randint(1, 10145478)
    # get title, related person from cinemagoer
    # person = imdb(titleid).get_person()
    # TODO list of verification check
    # TODO list of validation check (compare with cinemagoer)
    # from imdb import Cinemagoer
    # ia = Cinemagoer()
    # movie = ia.get_movie('0856340')
    # print('Directors:')
    # for director in movie['directors']:
    #     print(director['name'])
    # # print the genres of the movie
    # print('Genres:')
    # for genre in movie['genres']:
    #     print(genre)
    # # search for a person name
    # people = ia.search_person('Mel Gibson')
    # for person in people:
    #    print(person.personID, person['name'])
    return


def veva_person(df):
    # """
    # given old and new dataframe with person name, old_id (old) and person name, birthyear, new_id (new),
    # returns 1. unified union dataframe with person name, id, person name, birthyear
    #         2. map of (old_id, union_id), (new_id, union_id)
    # #     1. compare old_person with new_person using name (only new data has born/death year?)
    # #     **title.principals.tsv.gz** – Contains the principal cast/crew for titles
    # # -   tconst (string) - alphanumeric unique identifier of the title
    # # -   ordering (integer) – a number to uniquely identify rows for a given titleId
    # # -   nconst (string) - alphanumeric unique identifier of the name/person
    # # -   category (string) - the category of job that person was in
    # # -   job (string) - the specific job title if applicable, else '\N'
    # # -   characters (string) - the name of the character played if applicable, else '\N'
    # """
    old_columns = ['id', 'name']
    set_dir_moviedata()
    old_person = pd.read_pickle("old_person.pkl")
    old_person.columns = ['id', 'name', 'imdbIndex', 'imdbId', 'gender', 'namePcodeCf', 'namePcodeNf', 'surnamePcode',
                          'md5sum']
    # old_person.columns = ['id', 'personID','infoTypeID','info', 'note']
    #                     'phoneticCode', 'episodeOfID', 'seasonNr', 'episodeNr', 'seriesYears', 'md5sum']

    new_person = pd.read_pickle('new_person_basics.pkl')
    new_person.rename(columns={'primaryName': 'name', 'birthYear': 'year'}, inplace=True)
    # new_movie_basic = pd.read_pickle('new_movie_basics.pkl')
    # new_movie_basic = new_movie_basic.rename(columns = {"tconst": "titleId", 'originalTitle': 'title', 'startYear': 'year'})

    # new_movie_director = pd.read_pickle("data/imdb22/22title_crew.pkl")
    # newtitle_id.columns = ['titleId', 'directors', 'writers']
    return old_person, new_person