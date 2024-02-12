L=1;
Nx=7;
dx=L/(Nx-1);
% k = 1;
Q = 0;
A = zeros(Nx,Nx);
A(1,1) = 2;
A(Nx,Nx)=2;
A(7,6)=-1;
for i = 2:Nx-1
    A(i,i-1) =-1
    A(i,i) = 2
    A(i,i+1) =-1
    A(i-1,i) = -1
end
disp(A)
b = zeros(Nx,1);
b(1) = 100;
b(Nx) = 10;
T=inv(A)*b;
x = linspace(0,L,Nx);
plot(x,T);
xlabel('Distance(m)');
ylabel('Temperature (c)');
title('Temperature Distribution')
grid on;