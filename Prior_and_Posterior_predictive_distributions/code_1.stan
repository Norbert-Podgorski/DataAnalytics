data {
    int N;  // number of trials = 50
}

generated quantities {
   int<lower=0, upper=50> y;   // number of successes
   real<lower=0, upper=1> p;  // probability of allergic reaction
   p = normal_rng(0.2, 0.05);
   y = binomial_rng(N, p);
}