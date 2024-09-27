clc
clear
syms x;
g(x)=x^3-2*(x^2)-4
f(x)=(2*(x^2)+4)^(1/3)
df(x)=diff(f(x))
a= input('Enter Initial guess : ');
b= input('Enter Final guess : ');
tol= 1e-6;
if (g(a)*g(b))>0 || abs(df((a+b)/2))>=1
    disp('Please change the initial and final value !!!');
    return
end
kmax=80;
x0=(a+b)/2;
for i=1:kmax
    if f(x0)==0
        break
    end
    x1=double(f(x0));
    fprintf('X(%d)    =    f(%d)    =    %5.5f \n',i,i-1,x1);
    if abs(x1-x0)<=tol
        break
    end
    x0=x1;
end
fprintf(' Hence the required solution is = %.5f',x0);
