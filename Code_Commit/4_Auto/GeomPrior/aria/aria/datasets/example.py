from os import path

import pandas as pd
import pkg_resources


def load_data(name):
    filename = pkg_resources.resource_filename('aria', path.join('examples', name))
    return pd.read_csv(filename)

