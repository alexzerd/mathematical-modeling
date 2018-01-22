% script for lab5

clear all
kar = 5;
k = 0:1:kar;
kar = kar+1;
z = probab(k);
 N = 1000;
 xd(1:N) = 0;
 for k1 = 1:1:N
     xd(k1) = new55(probab(k), kar);
 end
 [vd, vdr] = hist(xd, kar);
 hist(xd, kar)
 title('probab')
 % estimation
 Mtheor = sum((k).*z)
 Mpract = mean(xd)
 
 %disp
 
 xi = k-Mpract;
 Dtheor = sum(xi.^2.*z)
 Dpract = var(xd)
 
 pr_v = vd/N;
 figure(2)
 plot(k, z)
 hold on
 plot(k, pr_v, 'r*')
 title('-theory, * vyborka')
 hold off
 %criterion
theor = N*z;
er = vd-theor
er2 = er.^2./theor;
hi2 = sum(er2)
 
 
 
 
 