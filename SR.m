clear
clc
D = 2;
N = 9;
K = 6;



if K >=  2*D
lo = counterpart2(N,D,K);
lo =real(lo);
lo = D/lo; 
else
    cap = counterpart1(N,D,K);
    cap = D / cap;
end








