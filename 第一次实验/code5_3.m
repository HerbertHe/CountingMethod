x = 2;
n = 20;
k = 0;
for i=1:n
    fprintf("k=%d\n", k);
    fprintf("x=%f\n", x);
    fx = x^3 - 2*x - 5;
    fx1 = 3*(x^2) - 2;
    gx = x - fx/fx1;
    k = k + 1;
    if gx == x
        fprintf("´ð°¸  x=%f\n", x);
        break;
    end
    x = gx;
end