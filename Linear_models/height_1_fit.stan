data {
    int N;
    real<lower=20, upper=260> heights[N];
}

parameters {
    real mu;
    real sigma;
}

model {
    mu ~ normal(170, 5);
    sigma ~ normal(15, 1);
    heights ~ normal(mu, sigma);
}

generated quantities {
    real<lower=20, upper=260> heights_pred = normal_rng(mu, sigma);
}