// Begin ODE declaration
vector vensim_ode_func(real time, vector outcome){
    vector[2] dydt;  // Return vector of the ODE function

    // State variables
    real prey = outcome[1];
    real predator = outcome[2];

    real delta = 0.024;
    real predator_birth_rate = delta * prey * predator;
    real beta = 0.028;
    real prey_death_rate = beta * predator * prey;
    real alpha = 0.55;
    real prey_birth_rate = alpha * prey;
    real gamma = 0.8;
    real predator_death_rate = gamma * predator;
    real prey_dydt = prey_birth_rate - prey_death_rate;
    real predator_dydt = predator_birth_rate - predator_death_rate;

    dydt[1] = prey_dydt;
    dydt[2] = predator_dydt;

    return dydt;
}
