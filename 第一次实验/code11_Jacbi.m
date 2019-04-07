A = [[5, -1, -1, -1]; [-1, 10, -1, -1]; [-1, -1, 5, -1]; [-1, -1, -1, 10]];
b = [-4, 12, 8, 34]';
D=diag([A(1,1),A(2,2),A(3,3),A(4,4)]);format rational
M=D\(D-A)
f=D\b;
X=zeros(4,16);
x=[0 0 0 0]';
for n=1:15 
    x=M*x+f;
    X(:,n+1)=x;
end
format short, X