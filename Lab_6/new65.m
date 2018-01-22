function [values, x] = new65( N, T, To, lmd )
%function for lab #6
%   

v = 1;
for i = 1: N
    t = To - log(rand) / lmd;
    j = 0;
    while t < T
        values(v) = t;
        v = v + 1;

        t = t - log(rand) / lmd;
        j = j + 1;
    end
    x(i) = j;
end
end
