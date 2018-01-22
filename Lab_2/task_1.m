M = 11000;
K = 12;
mu = -3;
sigma = 2;
lmd = 3.0;


x = normrnd(mu, sigma, 1, M);


disp([' first ' num2str(K) ' values of x(Normal): ']);
disp(x(1: K));
disp([' min value = ' num2str(min(x))]);
disp([' max value = ' num2str(max(x))]);
disp([' average value = ' num2str(mean(x))]);

kX = [32, 316, 1000, 3162, M];
nX = zeros(1, length(kX));
for j = 1: length(kX)
    nX(j) = mean(x(1: kX(j)));
end


disp(' standard deviation:')
disp([' theoretical = ' num2str(sigma) ' practical = ' num2str(std(x))]);


figure;
plot(log10(kX), nX);
hold on;
grid on;
title('Expected value on lg(L)');
xlabel('expected value');
ylabel('average value');
plot(log10(kX), mu * ones(1, length(kX)), 'r');
hold off;

a = floor(min(x)); 
b = ceil(max(x)); 
figure;

stepOfX = (b - a) / 20;
% center of 'pockets'
histX = a + stepOfX / 2: stepOfX: b - stepOfX / 2;
histEstimX = hist(x, histX);
bar(histX, histEstimX /(M * stepOfX));
hold on;
plot(histX, normpdf(histX, mu, sigma), 'r');
title('Normal distribution');
xlabel('values');
ylabel('probability density');

figure;
histXCum = cumsum(hist(x, histX) / M);
cdfTheoryX = normcdf(histX, mu, sigma);
hold on;
stairs(histX, histXCum, 'r');
plot(histX, cdfTheoryX);
hold off;
title('Cumulative histogram');
grid on;


xPoisson = poissrnd(lmd, 1, M);

disp([num2str(K) ' first values of x(Poisson): ']);
disp(xPoisson(1: K));

disp([' min value = ' num2str(min(xPoisson))]);
disp([' max value = ' num2str(max(xPoisson))]);
disp([' average value = ' num2str(mean(xPoisson))]);

disp(' standard deviation:')
disp([' theoretical = ' num2str(lmd^0.5) ' practical = ' num2str(std(xPoisson))]);


figure;
h = 0:max(xPoisson);
bar(h, hist(xPoisson, h) / M);
hold on;
plot(h, poisspdf(h, lmd), 'r');
title('Poisson distribution');
xlabel('values');
ylabel('probability density');
grid on;
