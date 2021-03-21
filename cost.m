function C = cost(a,b,y,k,t,T)
%% T 是向量， a，b,y，k,t 为标量
    if length(T)<k || ~(T(k-1)<t && T(k)>t)
        return;
    end
    sum = 0;
    for i = 1:k-1
        tem = a*T(i)+b*T(i)+y;
        sum = sum + tem;
    end
    C = sum + a*T(k) + b*t + y;