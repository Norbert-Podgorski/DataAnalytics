generated quantities {
    real alpha;
    real theta;
    real n;
    real lambda;
    int y;
    alpha = normal_rng(3, 1);
    theta = normal_rng(0.5, 0.1);
    n = normal_rng(0, 1);
    lambda = exp(alpha + theta * n);
    y = poisson_rng(lambda);
}
