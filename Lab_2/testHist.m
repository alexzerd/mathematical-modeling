%script for Lab_2

M = 11000;
karm = 10;

figure(1)
xrn = randn(1, M);
hist(xrn, karm)
title('rand, karm = 10')
vn = hist(xrn, karm);

figure(2)
xr = rand(1, M);
hist(xr, karm)
title('rand, karm = 10')
v = hist(xr, karm);

est1xr = mean(xr);
est1xrn = mean(xrn);
est2xr = std(xr);
est2xrn = std(xrn);
pr(1:karm) = 1/karm;
theor = pr*M;
er1  = v - theor;
er2 = er1.*er1./theor;
xi2 = sum(er2);