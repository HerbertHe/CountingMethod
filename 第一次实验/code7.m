A = [[1, 0.8324, 0.7675, 0.9831]; [0.8324, 0.6930, 0.6400, 0.8190]; [0.7675, 0.6400, 0.5911, 0.7580]; [0.9831, 0.8190, 0.7580, 0.0055]];
b = [8.8997, 7.4144, 6.8428, 4.9171]';
B = [A, b];
[m, n] = size(A);
X = zeros(m, 1);
for j=1:m-1
    Q = B(:, j);
    for k=1:j-1
        Q(k) = 0;
    end
    imax = find(abs(Q) == max(abs(Q)));
    i = j;
    P = B(i, :);
    B(i, :) = B(imax, :);
    B(imax, :) = P;
    for i=j:m-1
        B(i+1, :) = B(i+1, :) - (B(i+1, j)./B(j, j)).*B(j, :);
    end
end
for i=m:-1:1
    sum = 0;
    for j=m:-1:i+1
        sum = sum + X(j) * B(i, j);
    end
    X(i) = (B(i, m+1) - sum)/B(i, i);
end
X




