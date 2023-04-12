data {
    int N;
    real heights[N];
    real weight[N];
}

parameters {
   real alpha;
   real betha;
   real sigma;
}

transformed parameters {
    real mu[N];
    for (i in 1:N){
        mu[i] = alpha + betha * weight[i] * weight[i];
    }
}

model {
    alpha ~ normal(170, 5);
    betha ~ lognormal(0, 1);
    sigma ~ normal(15, 1);
     for (i in 1:N) {
      heights[i] ~ normal(mu[i], sigma);
    }
}

generated quantities {
    real heights_pred[N];
    for (i in 1:N) {
        heights_pred[i] = normal_rng(mu[i], sigma);
    }
}
