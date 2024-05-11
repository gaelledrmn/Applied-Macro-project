function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 16
    T = [T; NaN(16 - size(T, 1), 1)];
end
T(1) = y(2)^(-params(4));
T(2) = y(7)^params(3);
T(3) = params(25)*y(34)*T(2);
T(4) = y(3)^(1-params(3));
T(5) = y(6)^(-params(24));
T(6) = y(6)^(1-params(24));
T(7) = params(26)/2*(y(11)-(y(11)))^2;
T(8) = params(11)/(1+params(8))*y(14)^(1+params(8));
T(9) = y(12)^params(16);
T(10) = y(11)/(y(11));
T(11) = T(10)^params(18);
T(12) = (y(12))*T(11);
T(13) = y(6)/(y(6));
T(14) = T(13)^params(17);
T(15) = T(12)*T(14);
T(16) = T(15)^(1-params(16));
end
