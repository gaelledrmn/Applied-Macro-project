function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(25, 1);
end
[T_order, T] = unemployment_NK.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(40, 1);
    residual(1) = (y(49)) - (y(76)*T(1));
    residual(2) = (T(2)*y(41)) - (1);
    residual(3) = (y(55)) - (y(45)-params(10)-params(7)/y(49)+params(1)*(1-params(6))*y(95));
    residual(4) = (y(43)) - ((1-params(6))*y(3)+y(54)*y(44));
    residual(5) = (y(46)) - (T(4)*T(5));
    residual(6) = (y(48)*y(78)*T(8)) - (y(47)-y(7)*(1-params(2)));
    residual(7) = ((1-params(2))*y(93)+params(3)*y(108)*y(86)/y(47)) - (y(41)*y(53));
    residual(8) = (y(78)*y(53)) - (1+T(6)*y(78)*y(53)*T(9)+T(11)*T(12));
    residual(9) = (y(56)) - (y(46)*(1-params(3))*y(68)/y(43)-y(45)+T(2)*(1-params(6))*y(96));
    residual(10) = (params(11)*y(54)^params(8)) - (y(56));
residual(11) = 1-params(14)+params(14)*y(50)-params(26)*y(51)*(y(51)-(steady_state(11)))+T(14)*(y(91)-(steady_state(11)));
    residual(12) = (y(55)*(1-y(77)*params(12))) - (y(56)*y(77)*params(12));
    residual(13) = (y(68)) - (y(50)-params(22)*y(58)^params(23)-y(60)*(1-params(24))*params(21)*(1-y(58))*T(15));
    residual(14) = ((y(60)*params(21)*T(16)/(params(22)*params(23)))^(1/(params(23)-1))) - (y(58));
    residual(15) = (y(46)) - (y(42)+y(48)+y(59)+y(46)*T(17)+y(44)*T(18));
    residual(16) = (y(44)) - (1-y(43));
    residual(17) = (y(41)) - (y(52)/y(91));
    residual(18) = (y(57)) - (T(16)*params(21)*(1-y(58)));
    residual(19) = (y(52)) - (T(19)*T(25)*y(79));
    residual(20) = (y(59)) - ((steady_state(6))*params(9)*y(75));
    residual(21) = (y(60)) - (params(19)*y(80));
    residual(22) = (y(61)) - (log(y(46)/y(6)));
    residual(23) = (y(62)) - (log(y(42)/y(2)));
    residual(24) = (y(63)) - (log(T(7)));
    residual(25) = (y(64)) - (y(51)-(steady_state(11)));
    residual(26) = (y(65)) - (y(52)-(steady_state(12)));
    residual(27) = (y(66)) - (y(44)-(steady_state(4)));
    residual(28) = (y(67)) - (y(60)-(steady_state(20)));
    residual(29) = (y(69)) - (log(T(22)));
    residual(30) = (y(71)) - (log(y(42)/(steady_state(2))));
    residual(31) = (y(70)) - (log(y(48)/(steady_state(8))));
    residual(32) = (y(72)) - (log(T(20)));
    residual(33) = (y(73)) - (log(y(52)/(steady_state(12))));
    residual(34) = (log(y(74))) - (params(28)*log(y(34))+x(1));
    residual(35) = (log(y(75))) - (params(29)*log(y(35))+x(2));
    residual(36) = (log(y(76))) - (params(30)*log(y(36))+x(3));
    residual(37) = (log(y(78))) - (params(32)*log(y(38))+x(5));
    residual(38) = (log(y(77))) - (params(31)*log(y(37))+x(4));
    residual(39) = (log(y(79))) - (params(33)*log(y(39))+x(6));
    residual(40) = (log(y(80))) - (params(34)*log(y(40))+x(7));
end
