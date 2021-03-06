function [ output ] = nConti( A,n )
%NCONTI 此处显示有关此函数的摘要
% 判断A中是否有至少n个循环连续的1,A是长度为16的行向量
m = find(A==0);
if length(m)==0
    output = true;
else
    if m(1) > n
        output = true;
    else
        A = [0,A(m(1)+1:end),A(1:m(1))];
        output = max(diff(find(~A)))-1>=n;
        % output = max(diff(find(~A)))-1;
    end
end
end

