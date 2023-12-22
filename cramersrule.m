function x= cramersrule(A,b)
n=length(b);
x=zeros(n,1);

D=det(A)
if A==0
    error('No Solution');
else if D==0
        error('No Solution');
end

for i=1:n
    AA=A;
    AA(:,i)=b;
    x(i)=det(AA)/det(A);


end
x;
end
