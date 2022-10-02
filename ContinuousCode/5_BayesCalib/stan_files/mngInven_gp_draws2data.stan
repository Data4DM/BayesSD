functions{
#include mngInven_gp_functions.stan
}
data{
    int n_t;
    vector[2] production_start_rate_af_p_noise_obs;
    vector[2] production_rate_af_p_noise_obs;
    vector[2] ran_norm1;
    vector[2] ran_norm2;
    vector[2] ran_norm3;
    vector[2] ran_norm4;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2};
}

