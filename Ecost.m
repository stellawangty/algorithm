function E = Ecost(k, i, r, a, b, y, t)
    syms a i r b y k t;
    tem1 = (a*i/r)+(b*i)/r+y;
    tem2 = symsum(tem1,i,k-1);
    tem3 = (tem2 + a*k/r + b*t + y)*r*exp(-r*t);
    tem4 = int(tem3, t, (k-1)/r, k/r);
    E = symsum(tem4, 1, inf);
