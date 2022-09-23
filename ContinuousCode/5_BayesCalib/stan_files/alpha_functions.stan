// Begin ODE declaration
vector vensim_ode_func(real time, vector outcome){
    vector[1] dydt;  // Return vector of the ODE function

    // State variables
    real price = outcome[1];

    real adjustment_time = 3;
    real fundamental_value = 1;
    real arbitrage_value = 1;
    real alpha_desired_price = fundamental_value + arbitrage_value;
    real price_discrepancy = alpha_desired_price - price;
    real price_adjustment_rate = price_discrepancy / adjustment_time;
    real price_dydt = price_adjustment_rate;

    dydt[1] = price_dydt;

    return dydt;
}
