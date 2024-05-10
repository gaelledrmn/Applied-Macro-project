function [lhs, rhs] = static_resid(y, x, params)
T = NaN(14, 1);
lhs = NaN(35, 1);
rhs = NaN(35, 1);
T(1) = y(2)^(-params(4));
T(2) = y(7)^params(3);
T(3) = params(25)*y(29)*T(2);
T(4) = y(3)^(1-params(3));
T(5) = y(6)^(-params(24));
T(6) = y(6)^(1-params(24));
T(7) = params(26)/2*(y(11)-(y(11)))^2;
T(8) = params(11)/(1+params(8))*y(14)^(1+params(8));
T(9) = y(12)^params(16);
T(10) = (y(11)/(y(11)))^params(18);
T(11) = (y(12))*T(10);
T(12) = (y(6)/(y(6)))^params(17);
T(13) = T(11)*T(12);
T(14) = T(13)^(1-params(16));
lhs(1) = y(9);
rhs(1) = y(31)*T(1);
lhs(2) = params(1)*y(1);
rhs(2) = 1;
lhs(3) = y(15);
rhs(3) = y(5)-params(10)-params(7)/y(9)+y(15)*params(1)*(1-params(6));
lhs(4) = y(3);
rhs(4) = (1-params(6))*y(3)+y(14)*y(4);
lhs(5) = y(6);
rhs(5) = T(3)*T(4);
lhs(6) = y(8)*y(33);
rhs(6) = y(7)-y(7)*(1-params(2));
lhs(7) = (1-params(2))*y(13)+y(6)*params(3)*y(28)/y(7);
rhs(7) = y(1)*y(13);
lhs(8) = y(33)*y(13);
rhs(8) = 1+params(15)/2*y(33)*y(13)*(1+(-y(8))/y(8));
lhs(9) = y(16);
rhs(9) = y(6)*(1-params(3))*y(28)/y(3)-y(5)+params(1)*(1-params(6))*y(16);
lhs(10) = params(11)*y(14)^params(8);
rhs(10) = y(16);
lhs(11) = 1-params(14)+params(14)*y(10)-params(26)*y(11)*(y(11)-(y(11)))+(y(11)-(y(11)))*y(11)*params(1)*params(26);
rhs(11) = 0;
lhs(12) = y(15)*(1-y(32)*params(12));
rhs(12) = y(16)*y(32)*params(12);
lhs(13) = y(28);
rhs(13) = y(10)-params(22)*y(18)^params(23)-y(20)*(1-params(24))*params(21)*(1-y(18))*T(5);
lhs(14) = (y(20)*params(21)*T(6)/(params(22)*params(23)))^(1/(params(23)-1));
rhs(14) = y(18);
lhs(15) = y(6);
rhs(15) = y(2)+y(8)+y(19)+y(6)*T(7)+y(4)*T(8);
lhs(16) = y(4);
rhs(16) = 1-y(3);
lhs(17) = y(1);
rhs(17) = y(12)/y(11);
lhs(18) = y(17);
rhs(18) = T(6)*params(21)*(1-y(18));
lhs(19) = y(12);
rhs(19) = T(9)*T(14)*y(34);
lhs(20) = y(19);
rhs(20) = (y(6))*params(9)*y(30);
lhs(21) = y(20);
rhs(21) = params(19)*y(35);
lhs(22) = y(21);
rhs(22) = 0;
lhs(23) = y(22);
rhs(23) = 0;
lhs(24) = y(23);
rhs(24) = 0;
lhs(25) = y(24);
rhs(25) = y(11)-(y(11));
lhs(26) = y(25);
rhs(26) = y(12)-(y(12));
lhs(27) = y(26);
rhs(27) = y(4)-(y(4));
lhs(28) = y(27);
rhs(28) = y(20)-(y(20));
lhs(29) = log(y(29));
rhs(29) = log(y(29))*params(28)+x(1);
lhs(30) = log(y(30));
rhs(30) = log(y(30))*params(29)+x(2);
lhs(31) = log(y(31));
rhs(31) = log(y(31))*params(30)+x(3);
lhs(32) = log(y(33));
rhs(32) = log(y(33))*params(32)+x(5);
lhs(33) = log(y(32));
rhs(33) = log(y(32))*params(31)+x(4);
lhs(34) = log(y(34));
rhs(34) = log(y(34))*params(33)+x(6);
lhs(35) = log(y(35));
rhs(35) = log(y(35))*params(34)+x(7);
end
