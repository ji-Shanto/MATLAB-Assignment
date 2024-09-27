clear
clc
f= @(x) (sin(x)+cos(x)+exp(x)-8)
a=input('Enter the initial value : ');
b=input('Enter the final value : ');
tol=1e-5;
fprintf('\n\n');
if (f(a)*f(b)>0)
    disp('Please change the initial and final value .')
    return
end
kmax=30;
fprintf('Iteration no        a          b         c        |f(c)| \n');
for k=1:1:kmax
    c=(a*(f(b))-b*(f(a)))/(f(b)-f(a));
    fprintf('%8d %15.6f %10.6f %10.6f %10.6f  \n',k,a,b,c,f(c));
    if (f(c) == 0)
        break
    end
    if (abs(f(c))<=tol)
        break
    end
    if (f(a)>0)
        if(f(a)*f(c)>0)
            a=c;
        else
            b=c;
        end
    else
        if(f(b)*f(c)>0)
            b=c;
        else
            a=c;
        end
    end
end
fprintf('\n\nHence, The root of the equation is : %.4f \n',c)


