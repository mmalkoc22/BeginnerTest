function [p,iter]=mysecant(f,p0,p1,tol,Nmax)
disp('Secant Method')
%Step 1
i=2;
q0=feval(f,p0);
q1=feval(f,p1);
disp('iter p0 p1 q0=f(p0) q1=f(p1) p')
%Step 2
while(i<=Nmax)
        %Step 3
        p=p1-q1*((p1-p0)/(q1-q0)); %secant formula
        %Step 4
        if(abs(p-p1)<tol)
        fprintf('the root is %f \n',p)
        break
        end
        fprintf('%2i \t %f \t %f \t %f \t %f \t %f \n ',i-1,p0,p1,q0,q1,p)
        %Step 5
        i=i+1;
        %Step 6
        %Update points
        p0=p1;
        q0=q1;
        p1=p;
        q1=feval(f,p);
        iter=i-2;
        end
        fprintf('An iteration number is : %d\n',iter)
%Step 7
if(i>Nmax)
fprintf('Method failed to converge after Nmax iterations, Nmax= %i', Nmax)
end
end
