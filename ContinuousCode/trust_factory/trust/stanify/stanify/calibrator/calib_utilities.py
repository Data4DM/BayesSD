
def check_consistency(setting, precision, numeric, prior, output_format):
    is_consistent = True
    #TODO @Dashadowe better error msg format?
    if (len(setting['hier_est_param_names']) == 0  and precision['R'] > 1):
        print("if there is at least one hierarchical estimated parameter, then R > 1")
        is_consistent = False

    if (len(setting['hier_est_param_names']) > 0 and precision['R'] == 1):
        print("if R = 1, there should be zero hierarchical estimated parameter")
        is_consistent = False

    return is_consistent