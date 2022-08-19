import os
from urllib.request import urlretrieve

from appdirs import user_cache_dir


def get_cache_path(name):
    path = os.path.join(user_cache_dir('aria'), name)
    dirname = os.path.dirname(path)
    if not os.path.isdir(dirname):
        os.makedirs(dirname)
    return path


def get_file(name, origin):
    path = get_cache_path(name)
    if not os.path.exists(path):
        urlretrieve(origin, path)
    return path
