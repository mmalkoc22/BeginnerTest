function [p,iter]=myfalseposition(f,p0,p1,tol,Nmax)
%Mustafa Malkoç 200219019004
disp('The Method of False Position')
disp('Iter p0 p1 p f(p)')
%Step 1
i=2;
q0=feval(f,p0); %write value of f at point p0
q1=feval(f,p1); %write value of f at point p1
%Step 2
while(i<=Nmax)
 %Step 3
 p=p1-(q1*(p1-p0)/(q1-q0)) ; %Write regula falsi formula
 %Step 4
 if abs(p-p1)<tol
 fprintf('the root is %f \n',p)
 break
 end
 %Step 5
 i=i+1;
 q=feval(f,p); %write value of f at point p
 fprintf('%2i \t %f \t %f \t %f \t %f \n ',i-2,p0,p1,p,q)
 %Step 6
 if (q*q1<0)
 p0=p1;
 q0=q1;
 end

 %Step 7
 %update the points
 p1=p;
 q1=q;
 iter=i-2;
 end
 fprintf('An iteration number is : %d\n',iter)
%Step 8
if(i>Nmax)
fprintf('Method failed to converge after Nmax iterations, Nmax= %i', Nmax)
end
end
