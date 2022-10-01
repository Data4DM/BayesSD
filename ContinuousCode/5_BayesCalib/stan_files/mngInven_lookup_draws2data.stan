functions{
#include mngInven_lookup_functions.stan
}
data{
    int n_t;
    int n_firm;
    vector[20] customer_order_rate;
    vector[20] ran_norm1;
    vector[20] ran_norm2;
    vector[20] ran_norm3;
    vector[20] ran_norm4;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}

