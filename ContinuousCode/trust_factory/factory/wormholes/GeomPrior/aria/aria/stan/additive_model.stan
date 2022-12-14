data {
    int<lower=1> T;
    int<lower=1> K;
    vector[T] y;
    matrix[T, K] X;
}
parameters {
    vector[K] beta;
    real<lower=0> sigma_obs;
}
model {
    beta ~ normal(0, 1);
    sigma_obs ~ normal(0, 0.5);

    y ~ normal(X * beta, sigma_obs);
}
