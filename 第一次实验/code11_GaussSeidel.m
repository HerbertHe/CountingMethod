A = [[5, -1, -1, -1]; [-1, 10, -1, -1]; [-1, -1, 5, -1]; [-1, -1, -1, 10]];
b = [-4, 12, 8, 34]';
D=diag([A(1,1),A(2,2),A(3,3),A(4,4)]); format rational
M=D\(D-A);
f=D\b;
X=zeros(4,8);
x=[0 0 0 0]';
x1=0;
x2=x1;
x3=x1;
x4=x1;
for n=1:8
    x1=M(1,:)*x+f(1);
    x=[x1,x2,x3,x4]';
    x2=M(2,:)*x+f(2);
    x=[x1,x2,x3,x4]';
    x3=M(3,:)*x+f(3);
    x=[x1,x2,x3,x4]';
    x4=M(4,:)*x+f(4);
    x=[x1,x2,x3,x4]';
    X(:,n+1)=x;
    %保存迭代过程的中间变量
end
format short, X