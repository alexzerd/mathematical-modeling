%script for lab #6 vr #5
clc
close all
clear all


N = 10000;
numberOfPockets = 4;% number of pockets

To = 0;
T = 5;
lmd = 0.5;


x = zeros(1, N);
values = [];
[values, x] = new65(N, T, To, lmd);


step = (T - To) / numberOfPockets;
stH = To + step / 2: step: T - step / 2;
h = hist(values, stH) / (N * step);
figure;
plot (stH, h, 'b*-');
hold on;
plot (stH, ones(1, numberOfPockets) * lmd, 'r');
grid on;

K = 0: 1: max(x);
figure;
bar(K, hist(x, K) / N);
hold on;
plot(K, poisspdf(K, lmd * (T - To)), 'r');
grid on;

del = 0.5*(T-To);
 pr(1:numberOfPockets) = 0;
 pr(1) = exp(-del);
 
for s = 2:numberOfPockets
     pr(s) = (pr(s-1)*del)/(s-1);
end

m1 = mean(h)

d1 = var(h)

%xi2
[v, xv] = hist(values, stH);
th = pr*N;
er = v-th;
er2 = er.^2./th;
hi2 = sum(er2);
hi2 = hi2/1000000