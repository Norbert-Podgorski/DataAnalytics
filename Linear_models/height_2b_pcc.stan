data {
   int<lower=0> N;
   real weight[N];
}


generated quantities {
   real sigma;
   real alpha;
   real betha;
   alpha = normal_rng(170, 5);
   sigma = normal_rng(15, 1);
   betha = lognormal_rng(0, 0.25);

   real height[N];
   for (i in 1:N) {
      height[i] = normal_rng(alpha + betha * weight[i], sigma);
  }
}