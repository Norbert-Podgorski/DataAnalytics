data {
   int N;
   real weight[N];
}


generated quantities {
   real mu;
   real sigma;
   real alpha;
   real betha;
   alpha = normal_rng(170, 5);
   sigma = normal_rng(15, 1);
   betha = normal_rng(0, 1);

   real height[N];
   for (i in 1:N) {
      height[i] = normal_rng(alpha + betha * weight[i], sigma);
  }
}