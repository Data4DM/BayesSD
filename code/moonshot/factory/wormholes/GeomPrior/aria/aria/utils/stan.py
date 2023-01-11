import hashlib
import pickle

import pkg_resources
import pystan

from aria.utils.cache import get_cache_path


def get_stan_model_code(name):
    code_bytes = pkg_resources.resource_string('aria', f'stan/{name}')
    return code_bytes.decode('utf-8')


def get_stan_model(name):
    try:
        stream = pkg_resources.resource_stream('aria', f'stan/{name}.pkl')
        model = pickle.load(stream)
        return model
    except Exception:
        pass

    code = get_stan_model_code(name)
    code_hash = hashlib.sha1(code.encode('utf-8')).hexdigest()
    cache_path = get_cache_path(f'stan/{code_hash}.pkl')
    try:
        with open(cache_path, 'rb') as file:
            model = pickle.load(file)
    except Exception:
        model = pystan.StanModel(model_code=code)
        with open(cache_path, 'wb') as file:
            pickle.dump(model, file)
    return model
