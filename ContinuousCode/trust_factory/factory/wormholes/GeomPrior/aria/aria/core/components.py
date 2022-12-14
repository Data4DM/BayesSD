from deprecated import deprecated


class Component:
    def __init__(self, name):
        self.name = name
        self.params = None

    def get_name(self):
        return self.name

    def fit(self, df):
        pass

    def get_features_list(self):
        raise NotImplementedError('Method not implemented')

    @deprecated
    def get_params_list(self):
        return self.get_features_list()

    def get_features(self, df):
        raise NotImplementedError('Method not implemented')
