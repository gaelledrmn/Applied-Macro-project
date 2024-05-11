function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(25, 1);
lhs = NaN(40, 1);
rhs = NaN(40, 1);
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
lhs(1) = y(49);
rhs(1) = y(76)*T(1);
lhs(2) = T(2)*y(41);
rhs(2) = 1;
lhs(3) = y(55);
rhs(3) = y(45)-params(10)-params(7)/y(49)+params(1)*(1-params(6))*y(95);
lhs(4) = y(43);
rhs(4) = (1-params(6))*y(3)+y(54)*y(44);
lhs(5) = y(46);
rhs(5) = T(4)*T(5);
lhs(6) = y(48)*y(78)*T(8);
rhs(6) = y(47)-y(7)*(1-params(2));
lhs(7) = (1-params(2))*y(93)+params(3)*y(108)*y(86)/y(47);
rhs(7) = y(41)*y(53);
lhs(8) = y(78)*y(53);
rhs(8) = 1+T(6)*y(78)*y(53)*T(9)+T(11)*T(12);
lhs(9) = y(56);
rhs(9) = y(46)*(1-params(3))*y(68)/y(43)-y(45)+T(2)*(1-params(6))*y(96);
lhs(10) = params(11)*y(54)^params(8);
rhs(10) = y(56);
lhs(11) = 1-params(14)+params(14)*y(50)-params(26)*y(51)*(y(51)-(steady_state(11)))+T(14)*(y(91)-(steady_state(11)));
rhs(11) = 0;
lhs(12) = y(55)*(1-y(77)*params(12));
rhs(12) = y(56)*y(77)*params(12);
lhs(13) = y(68);
rhs(13) = y(50)-params(22)*y(58)^params(23)-y(60)*(1-params(24))*params(21)*(1-y(58))*T(15);
lhs(14) = (y(60)*params(21)*T(16)/(params(22)*params(23)))^(1/(params(23)-1));
rhs(14) = y(58);
lhs(15) = y(46);
rhs(15) = y(42)+y(48)+y(59)+y(46)*T(17)+y(44)*T(18);
lhs(16) = y(44);
rhs(16) = 1-y(43);
lhs(17) = y(41);
rhs(17) = y(52)/y(91);
lhs(18) = y(57);
rhs(18) = T(16)*params(21)*(1-y(58));
lhs(19) = y(52);
rhs(19) = T(19)*T(25)*y(79);
lhs(20) = y(59);
rhs(20) = (steady_state(6))*params(9)*y(75);
lhs(21) = y(60);
rhs(21) = params(19)*y(80);
lhs(22) = y(61);
rhs(22) = log(y(46)/y(6));
lhs(23) = y(62);
rhs(23) = log(y(42)/y(2));
lhs(24) = y(63);
rhs(24) = log(T(7));
lhs(25) = y(64);
rhs(25) = y(51)-(steady_state(11));
lhs(26) = y(65);
rhs(26) = y(52)-(steady_state(12));
lhs(27) = y(66);
rhs(27) = y(44)-(steady_state(4));
lhs(28) = y(67);
rhs(28) = y(60)-(steady_state(20));
lhs(29) = y(69);
rhs(29) = log(T(22));
lhs(30) = y(71);
rhs(30) = log(y(42)/(steady_state(2)));
lhs(31) = y(70);
rhs(31) = log(y(48)/(steady_state(8)));
lhs(32) = y(72);
rhs(32) = log(T(20));
lhs(33) = y(73);
rhs(33) = log(y(52)/(steady_state(12)));
lhs(34) = log(y(74));
rhs(34) = params(28)*log(y(34))+x(1);
lhs(35) = log(y(75));
rhs(35) = params(29)*log(y(35))+x(2);
lhs(36) = log(y(76));
rhs(36) = params(30)*log(y(36))+x(3);
lhs(37) = log(y(78));
rhs(37) = params(32)*log(y(38))+x(5);
lhs(38) = log(y(77));
rhs(38) = params(31)*log(y(37))+x(4);
lhs(39) = log(y(79));
rhs(39) = params(33)*log(y(39))+x(6);
lhs(40) = log(y(80));
rhs(40) = params(34)*log(y(40))+x(7);
end
