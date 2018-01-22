function n = new55(prob, kar)
nk = 0:1:kar;
k = 1;
S = rand;
while S>0
    
    S = S - prob(k);
    k = k+1;
   if k>kar
       break
   end
end
n = nk(k-1);

end
