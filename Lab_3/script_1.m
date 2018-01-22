%script for Lab_3
%integral function
clear all
a = 0;
b = 30;
kar = 10;
sh = (b-a)/kar;
xx = a:sh:b;
y = fint5(xx);
figure(1)
plot(xx, y);
title('Integral from 0.2*exp(-x/5)');

%histogram
figure(2)
N = 1000;
z = rand(1, N);
xr = fobr5(z);
hist(xr, kar);
title('f(x) = 0.2*exp(-x/5)');
[v, xv] = hist(xr, kar);

%ozhidanie

mxu = mean(z);
mtu = quad(@fpl, a, b);
disp('Ozhidanie');
disp(mxu);
disp(mtu);

%doveritelny

yN = 1.96/sqrt(N);
sigmaU = std(z)
ulow = mxu - yN*sigmaU
uhigh = mxu + yN*sigmaU
disper = var(z)

%probability

p(1:kar) = 0;
ffx = fint5(xx);

for k = 1:kar
    p(k) = ffx(k+1) - ffx(k);
end

eps = 1 - sum(p);
disp(eps);

%kritery xi2

theory = N*p;
er = v - theory;
disp(er);
er2 = er.^2./theory;
xi2 = sum(er2);
disp(xi2);

figure(3)

pe = v/N;
plot(xv, p)
hold on
plot(xv, pe, 'g*')
title('- theory, *exper')
hold off

%estimation
% disp('estimation');
% Mxv = mean(xr);
% Mxt = quad(@fpl, a, b);
% 
% disp(Mxv);
% disp(Mxt);


