a=2;
b=3;
n=50;
answer = 0;
esp = 0.01;
% ��ʼ����(2,3)
% ����=0.01
% Ԥ��ֵѭ��50
for i = 1:n
    ya = a^3 - 2*a - 5;
    yb = b^3 - 2*b - 5;
    if ya*yb < 0 && b-a > esp
        b = (a+b)/2;
    else if ya*yb > 0 && b-a > esp
            a = (a+b)/2;
        else if ya*yb == 0 && b-a > esp
                if ya == 0
                    answer = a;
                    break;
                else
                    answer = b;
                    break;
                end
            else if b-a < esp
                    answer = (a+b)/2;
                    break;
                end
            end
        end
    end
end

fprintf("answer=%f\n", answer);