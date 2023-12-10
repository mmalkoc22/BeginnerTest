%Bisection Method for finding the roots of a function


function p = mybisectionnn(f, a, b, tol,Nmax)
disp('Bisection Method'); 
% Function is for bisection method.
%Output
%p satisfying f(p)=0 in interval(low,high)
%Inputs
%f is given function
%a and b are the end points
% tol=tolerance
%Nmax = maximum iteration numbers
% Evaluate both ends of the interval
fa = feval(f, a);
fb = feval(f, b);
i = 1; 
% Display error and finish if signs are not different
if fa*fb>0
 disp('Have not found a change in sign. Will not continue...');
 p = 'Error'
 return
end 
% Work with the limits modifying them until you find
% a function close enough to zero.
disp('Iter low high p f(p)');
while (i<=Nmax)
 
 % Find a new value to be tested as a root
 p = (a+b)/2;
 fp = feval(f,p);
 if (fp==0)||((b-a)/2<tol)
 fprintf('Root at x = %f \n\n', p);
 break
 end
fprintf('%2i \t %f \t %f \t %f \t %f \n', i-1, a, b, p, fp); 
i=i+1;
 % Update the limits
 if fa*fp>0
 a=p;
 fa=fp;
 else
 b=p;
 end
end 
% Show the last approximation considering the tolerance
fp = feval(f, p);
fprintf('\n x = %f produces f(x) = %f \n %i iterations\n', p, fp, i-1);
fprintf(' Approximation with tolerance = %f \n', tol);
