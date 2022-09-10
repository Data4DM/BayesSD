functions {
    matrix get_changepoint_matrix(vector t, vector t_change, int T, int S) {
        matrix[T, S] A;
        row_vector[S] a_row;
        int cp_idx;

        A = rep_matrix(0, T, S);
        a_row = rep_row_vector(0, S);
        cp_idx = 1;

        for (i in 1:T) {
            while ((cp_idx <= S) && (t[i] >= t_change[cp_idx])) {
                a_row[cp_idx] = 1;
                cp_idx = cp_idx + 1;
            }
            A[i] = a_row;
        }
        return A;
    }
}
data {
    int<lower=1> T;
    int<lower=1> K;
    int<lower=1> S;
    int<lower=1> D;
    int<lower=1> P;
    vector[T] t;
    vector[T] y;
    matrix[T, K] X;
    vector[S] t_change;
    int p[T, D];
}
transformed data {
    matrix[T, S] A;
    matrix[T, S] B;
    A = get_changepoint_matrix(t, t_change, T, S);
    B = A .* rep_matrix(to_row_vector(t_change), T);
}
parameters {
    real k_mu;
    real<lower=0> k_sigma;
    real m_mu;
    real<lower=0> m_sigma;
    vector[K] beta_mu;
    vector<lower=0>[K] beta_sigma;

    real k[D, P];
    real m[D, P];
    vector[K] beta[D, P];
    vector[S] delta;
    simplex[D] theta;
    real<lower=0> sigma_obs;
}
transformed parameters {
    vector[T] yhat;
    {
        matrix[D, T] p_yhat;
        for (d in 1:D) {
            vector[T] p_k;
            vector[T] p_m;
            matrix[T, K] p_beta;
            for (i in 1:T) {
                p_k[i] = k[d, p[i, d]];
                p_m[i] = m[d, p[i, d]];
                p_beta[i] = to_row_vector(beta[d, p[i, d]]);
            }
            p_yhat[d] = to_row_vector(
                (p_k + A * delta) .* t +
                (p_m - B * delta) +
                rows_dot_product(X, p_beta)
            );
        }
        yhat = p_yhat' * theta;
    }
}
model {
    k_mu ~ normal(0, 5);
    m_mu ~ normal(0, 5);
    beta_mu ~ normal(0, 10);

    for (d in 1:D) {
        for (i in 1:P) {
            k[d, i] ~ normal(k_mu, 5);
            m[d, i] ~ normal(m_mu, 5);
            beta[d, i] ~ normal(beta_mu, 10);
        }
    }
    delta ~ double_exponential(0, 0.05);
    sigma_obs ~ normal(0, 0.5);

    y ~ normal(yhat, sigma_obs);
}
