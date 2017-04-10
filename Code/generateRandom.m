function value=generateRandom(n)
%Lehmer random number generator
format shortg
c = clock;
x=c(6)+c(5);
x=16807*x;
value=mod(x,2147483647)/10000;

end