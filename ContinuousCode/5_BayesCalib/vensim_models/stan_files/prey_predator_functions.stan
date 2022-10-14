// Begin ODE declaration
vector vensim_ode_func(real time, vector outcome, real gamma, real delta, real beta, real alpha){
    vector[2] dydt;  // Return vector of the ODE function

    // State variables
    real predator = outcome[1];
    real prey = outcome[2];

    real predator_birth_rate = delta * prey * predator;
    real predator_death_rate = gamma * predator;
    real predator_dydt = predator_birth_rate - predator_death_rate;
    real prey_birth_rate = alpha * prey;
    real prey_death_rate = beta * predator * prey;
    real prey_dydt = prey_birth_rate - prey_death_rate;

    dydt[1] = predator_dydt;
    dydt[2] = prey_dydt;

    return dydt;
}
