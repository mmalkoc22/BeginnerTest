% Newtons Iteration formula for finding the roots of funtions


function [p,iter]= mynewtons(f,df,p0,tol,Nmax)
disp('Newtons Method')
fp0=feval(f,p0);
dfp0=feval(df,p0);

%Step1
i=1;
%disp('Iter p f(p) df(p)');
%fprintf('%2i \t %f \t %f \t %f \n', i, p0, fp0, dfp0);

%Step2
while (i<= Nmax)
    %Step 3
    p=p0-(fp0/dfp0); %Newtons's Formula
    %Step 4
    if (abs(p-p0)<tol)
        fprintf('the root is %f \n',p)
    break
    end
    %Step 5 %Update
    i=i+1
    %step 6 
    p0=p;
    fp0=feval(f,p0);
    dfp0=feval(df,p0);
    %fprintf('%2i \t %f \t %f \t %f \n', i, p, fp0, dfp0);
    iter= i-1;
end
%fprintf('An iteration number is : %d\n',iter);
end
