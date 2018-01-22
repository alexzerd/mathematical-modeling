%script for newf5
x = -5:0.2:5;
y = newf5(x);

figure(1)
hold on;

title('newf5 grafic')
xlabel('argument')
ylabel('function')

y1 = newf5(x)+100;

figure(2)


hold on;
plot(x, y)
plot(x, y1, 'g*')
title('newf5 beautyfied')
xlabel('argument')
ylabel('function')
hold off;