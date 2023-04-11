data {
   int N;
   real<lower=0, upper=200> weight[N];
}


generated quantities {
   real mu;
   real sigma;
   real alpha;
   real betha;
   mu = normal_rng(170, 10);
   alpha = normal_rng(170, 10);
   sigma = normal_rng(10, 2);
   betha = normal_rng(0, 1);

   real<lower=20, upper=260> height[N];
   for (i in 1:N) {
      height[i] = normal_rng(alpha + betha * weight[i], sigma);
  }
}