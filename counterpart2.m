function [lo] = counterpart2(N,D,K)
%% Sennur's scheme
imag = 1i;
r = zeros(1,D);
for j =1:D
    r(1,j) = exp(imag*2*pi*(j-1)/D) / (N^(1/D) - exp(imag*2*pi*(j-1)/D)); 
end
A = zeros(D,D);
for i = 1:D
    for j = 1:D    
        A(i,j) = r(1,i)^(-j);
    end
end
c = zeros(1,D-1);
c = [c, (N-1)^(K-D)];
y =  c * inv(A);
R1 = 0;
R2 = 0;
for i = 1:D
    R1 = R1 + y(1,i)*r(1,i)^(K-D)*((1+1/r(1,i))^K - (1+1/r(1,i))^(K-D));
    R2 = R2 + y(1,i)*r(1,i)^(K-D)*((1+1/r(1,i))^K -1);    
end
lo = R1/R2;



end