function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 25
    T = [T; NaN(25 - size(T, 1), 1)];
end
T(1) = y(42)^(-params(4));
T(2) = params(1)*y(89)/y(49);
T(3) = y(7)^params(3);
T(4) = params(25)*y(74)*T(3);
T(5) = y(43)^(1-params(3));
T(6) = params(15)/2;
T(7) = y(48)/y(8);
T(8) = 1-T(6)*(T(7)-1)^2;
T(9) = 1+y(48)*(3*y(48)/y(8)-4)/y(8);
T(10) = 1-y(88)/y(48);
T(11) = params(15)*y(93)*T(2)*y(118)*T(10);
T(12) = (y(88)/y(48))^2;
T(13) = y(86)*y(89)*params(1)*params(26)/y(49)/y(46);
T(14) = T(13)*y(91);
T(15) = y(46)^(-params(24));
T(16) = y(46)^(1-params(24));
T(17) = params(26)/2*(y(51)-(steady_state(11)))^2;
T(18) = params(11)/(1+params(8))*y(54)^(1+params(8));
T(19) = y(12)^params(16);
T(20) = y(51)/(steady_state(11));
T(21) = (steady_state(12))*T(20)^params(18);
T(22) = y(46)/(steady_state(6));
T(23) = T(22)^params(17);
T(24) = T(21)*T(23);
T(25) = T(24)^(1-params(16));
end
