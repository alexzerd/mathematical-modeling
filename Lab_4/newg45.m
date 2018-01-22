function x2 = newg45( a, b, fm )
%Neuman function for lab #4 var #5

z1 = unifrnd(a, b, 1, 1);
z2 = unifrnd(0, fm, 1, 1);
y1 = new45(z1);

while y1 < z2
    z1 = unifrnd(a, b, 1, 1);
    z2 = unifrnd(0, fm, 1, 1);
    y1 = new45(z1);
end

x2 = z1;

end

