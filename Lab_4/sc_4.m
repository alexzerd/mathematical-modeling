%script for lab #4

clc;
clear all;
close all;

a = 1;
b = 2;
kar = 8;
N = 1000;
shag = (b - a) / kar;

x1 = a:shag:b;
ff4(1:(kar+1)) = 0;
ff4(1) = 0;

for k = 2:(kar+1)
    a1 = a+shag*(k-1);
    ff4(k) = integral(@new45, a, a1);
end

% disp(ff4)
% figure(1)
% plot(x1, ff4);

for k = 1:kar
    pr(k) = ff4(k+1) - ff4(k);
end

figure(1)
gf = new45(x1);
plot(x1, gf);
title('f(x) = 1/xln2')

fm = max(gf);

for k=1:N
    xn(k) = newg45(a, b, fm);
end

figure(2)
hist(xn, kar);
title('Neuman #5')

%kriteri xi2

[v, xv] = hist(xn, kar);
th = pr*N;
er = v-th;
er2 = er.^2./th;
hi2 = sum(er2)


%omega kriterii

xns = sort(xn);
fxns(1:N) = 0;

for k = 1:N
    a2 = xns(k);
    fxns(k) = integral(@new45, a, a2);
end

k1 = 1:N;
ko5 = (k1 - 0.5)./N;
erw = fxns - ko5;
errorw = erw.^2;
omega = 1./(12*N)+sum(errorw)

prv = v/N;
xvn = xv/N;
figure(3)
plot(xv, pr);
title('* - vyborka, - theory')
hold on
plot(xv, prv, 'r*');
hold off






