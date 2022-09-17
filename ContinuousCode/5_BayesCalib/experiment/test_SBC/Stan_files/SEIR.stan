functions {
  vector X_model(real time, vector y, array[] real params) {
    vector[5] dydt;
    real E_to_I;
    real I_to_R;
    real var_beta;
    real C_in;
    real S_to_E;
    E_to_I = 0.5*y[2];
    I_to_R = 0.5*y[3];
    var_beta = 0.5/params[1];
    C_in = params[2]*E_to_I;
    S_to_E = (var_beta*y[5]*y[3])/10000;
    dydt[1] = C_in;
    dydt[2] = S_to_E-E_to_I;
    dydt[3] = E_to_I-I_to_R;
    dydt[4] = I_to_R;
    dydt[5] = -S_to_E;
    return dydt;
  }
}
data {
  int<lower = 1> n_obs;
  int<lower = 1> n_params;
  int<lower = 1> n_difeq;
  array[n_obs] int y;
  real t0;
  array[n_obs] real ts;
}
parameters {
  real<lower = 0, upper = 1> par_inv_R0;
  real<lower = 0, upper = 1> par_rho;
  real<lower = 0> I0;
}
transformed parameters{
  array[n_obs] vector[n_difeq] x; // Output from the ODE solver
  array[n_params] real params;
  vector[n_difeq] x0; // init values
  array[n_obs] real delta_x_1;
  x0[1] = I0; // C
  x0[2] = 0; // E
  x0[3] = I0; // I
  x0[4] = 0; // R
  x0[5] = (10000) - I0; // S
  params[1] = par_inv_R0;
  params[2] = par_rho;
  x = ode_rk45(X_model, x0, t0, ts, params);
  delta_x_1[1] =  x[1, 1] - x0[1] + 1e-5;
  for (i in 1:n_obs-1) {
    delta_x_1[i + 1] = x[i + 1, 1] - x[i, 1] + 1e-5;
  }
}
model {
  par_inv_R0 ~ beta(2, 2);
  par_rho ~ beta(2, 2);
  I0 ~ lognormal(0, 1);
  y ~ poisson(delta_x_1);
}
generated quantities {
  real log_lik;
  log_lik = poisson_lpmf(y | delta_x_1);
}
