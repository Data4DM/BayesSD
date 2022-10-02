import datetime

import pandas as pd

from aria.utils.cache import get_file

freqs = {
    'Yearly': 'Y',
    'Quarterly': 'Q',
    'Monthly': 'M',
    'Weekly': 'W',
    'Daily': 'D',
    'Hourly': 'H',
}


def load_info():
    path = get_file('datasets/m4/info.csv', 'https://raw.githubusercontent.com/M4Competition/M4-methods/master/Dataset/M4-info.csv')
    df = pd.read_csv(path)
    return df


def load_data(name):
    info = load_info()
    index = info.index[info['M4id'] == name][0]
    sp = info.at[index, 'SP']
    starting_date = datetime.datetime.strptime(info.at[index, 'StartingDate'], '%d-%m-%y %H:%M')
    train_path = get_file(f'datasets/m4/{sp}-train.csv', f'https://github.com/M4Competition/M4-methods/raw/master/Dataset/Train/{sp}-train.csv')
    test_path = get_file(f'datasets/m4/{sp}-test.csv', f'https://github.com/M4Competition/M4-methods/raw/master/Dataset/Test/{sp}-test.csv')

    train = pd.read_csv(train_path).set_index('V1').transpose().reset_index()[[name]].dropna().rename(columns={name: 'y'})
    test = pd.read_csv(test_path).set_index('V1').transpose().reset_index()[[name]].dropna().rename(columns={name: 'y'})

    dates = pd.date_range(
        start=starting_date,
        periods=len(train) + len(test),
        freq=freqs[sp],
    )

    train = pd.concat([train, pd.DataFrame({'ds': dates[:len(train)]})], axis=1)
    test = pd.concat([test, pd.DataFrame({'ds': dates[len(train):]})], axis=1)

    return train, test
