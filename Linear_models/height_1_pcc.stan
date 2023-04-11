generated quantities {
   real mu;
   real sigma;
   real<lower=20, upper=260> height;
   mu = normal_rng(170, 5);
   sigma = normal_rng(15, 1);
   height = normal_rng(mu, sigma);
}