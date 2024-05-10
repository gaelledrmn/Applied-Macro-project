function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = unemployment_NK.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(35, 64);
g1(1,15)=(-(y(44)*getPowerDeriv(y(15),(-params(4)),1)));
g1(1,22)=1;
g1(1,44)=(-T(1));
g1(2,14)=T(2);
g1(2,22)=y(14)*T(27);
g1(2,51)=y(14)*params(1)/y(22);
g1(3,18)=(-1);
g1(3,22)=(-params(7))/(y(22)*y(22));
g1(3,28)=1;
g1(3,54)=(-(params(1)*(1-params(6))));
g1(4,2)=(-(1-params(6)));
g1(4,16)=1;
g1(4,17)=(-y(27));
g1(4,27)=(-y(17));
g1(5,16)=(-(T(4)*getPowerDeriv(y(16),1-params(3),1)));
g1(5,19)=1;
g1(5,4)=(-(T(5)*params(25)*y(42)*getPowerDeriv(y(4),params(3),1)));
g1(5,42)=(-(T(5)*params(25)*T(3)));
g1(6,4)=1-params(2);
g1(6,20)=(-1);
g1(6,5)=y(21)*y(46)*(-(T(6)*(-y(21))/(y(5)*y(5))*2*(T(7)-1)));
g1(6,21)=y(46)*T(8)+y(21)*y(46)*(-(T(6)*2*(T(7)-1)*1/y(5)));
g1(6,46)=y(21)*T(8);
g1(7,14)=(-y(26));
g1(7,49)=params(3)*y(56)/y(20);
g1(7,20)=(-(params(3)*y(56)*y(49)))/(y(20)*y(20));
g1(7,26)=(-y(14));
g1(7,53)=1-params(2);
g1(7,56)=params(3)*y(49)/y(20);
g1(8,5)=(-(T(6)*y(46)*y(26)*(y(5)*y(21)*(-(3*y(21)))/(y(5)*y(5))-y(21)*(3*y(21)/y(5)-4))/(y(5)*y(5))));
g1(8,21)=(-(T(6)*y(46)*y(26)*(3*y(21)/y(5)-4+y(21)*3/y(5))/y(5)+T(12)*params(15)*y(53)*T(2)*y(57)*(-((-y(50))/(y(21)*y(21))))+T(11)*(-y(50))/(y(21)*y(21))*2*y(50)/y(21)));
g1(8,50)=(-(T(12)*params(15)*y(53)*T(2)*y(57)*(-(1/y(21)))+T(11)*2*y(50)/y(21)*1/y(21)));
g1(8,22)=(-(T(12)*T(10)*params(15)*y(53)*y(57)*T(27)));
g1(8,51)=(-(T(12)*T(10)*params(15)*y(53)*y(57)*params(1)/y(22)));
g1(8,26)=y(46)-T(9)*y(46)*T(6);
g1(8,53)=(-(T(12)*T(10)*params(15)*T(2)*y(57)));
g1(8,46)=y(26)-T(9)*T(6)*y(26);
g1(8,57)=(-(T(12)*T(10)*params(15)*T(2)*y(53)));
g1(9,16)=(-((-(y(19)*(1-params(3))*y(41)))/(y(16)*y(16))));
g1(9,18)=1;
g1(9,19)=(-((1-params(3))*y(41)/y(16)));
g1(9,22)=(-(y(55)*(1-params(6))*T(27)));
g1(9,51)=(-(y(55)*(1-params(6))*params(1)/y(22)));
g1(9,29)=1;
g1(9,55)=(-(T(2)*(1-params(6))));
g1(9,41)=(-(y(19)*(1-params(3))/y(16)));
g1(10,27)=params(11)*getPowerDeriv(y(27),params(8),1);
g1(10,29)=(-1);
g1(11,19)=(y(52)-(steady_state(11)))*y(52)*(-(y(49)*y(51)*params(1)*params(26)/y(22)))/(y(19)*y(19));
g1(11,49)=(y(52)-(steady_state(11)))*y(52)*y(51)*params(1)*params(26)/y(22)/y(19);
g1(11,22)=(y(52)-(steady_state(11)))*y(52)*y(49)*(-(y(51)*params(1)*params(26)))/(y(22)*y(22))/y(19);
g1(11,51)=(y(52)-(steady_state(11)))*y(52)*y(49)*params(1)*params(26)/y(22)/y(19);
g1(11,23)=params(14);
g1(11,24)=(-(params(26)*y(24)+params(26)*(y(24)-(steady_state(11)))));
g1(11,52)=T(14)+T(13)*(y(52)-(steady_state(11)));
g1(12,28)=1-y(45)*params(12);
g1(12,29)=(-(y(45)*params(12)));
g1(12,45)=y(28)*(-params(12))-y(29)*params(12);
g1(13,19)=y(33)*(1-params(24))*params(21)*(1-y(31))*getPowerDeriv(y(19),(-params(24)),1);
g1(13,23)=(-1);
g1(13,31)=(-((-(params(22)*getPowerDeriv(y(31),params(23),1)))-T(15)*(-(y(33)*(1-params(24))*params(21)))));
g1(13,33)=T(15)*(1-y(31))*(1-params(24))*params(21);
g1(13,41)=1;
g1(14,19)=y(33)*params(21)*T(24)/(params(22)*params(23))*T(25);
g1(14,31)=(-1);
g1(14,33)=T(25)*params(21)*T(16)/(params(22)*params(23));
g1(15,15)=(-1);
g1(15,17)=(-T(18));
g1(15,19)=1-T(17);
g1(15,21)=(-1);
g1(15,24)=(-(y(19)*params(26)/2*2*(y(24)-(steady_state(11)))));
g1(15,27)=(-(y(17)*params(11)/(1+params(8))*getPowerDeriv(y(27),1+params(8),1)));
g1(15,32)=(-1);
g1(16,16)=1;
g1(16,17)=1;
g1(17,14)=1;
g1(17,52)=(-((-y(25))/(y(52)*y(52))));
g1(17,25)=(-(1/y(52)));
g1(18,19)=(-(params(21)*(1-y(31))*T(24)));
g1(18,30)=1;
g1(18,31)=(-(T(16)*(-params(21))));
g1(19,19)=(-(y(47)*T(19)*T(20)*1/(steady_state(6))*getPowerDeriv(y(19)/(steady_state(6)),params(17),1)*T(26)));
g1(19,24)=(-(y(47)*T(19)*T(26)*T(21)*(steady_state(12))*1/(steady_state(11))*getPowerDeriv(y(24)/(steady_state(11)),params(18),1)));
g1(19,6)=(-(y(47)*T(23)*getPowerDeriv(y(6),params(16),1)));
g1(19,25)=1;
g1(19,47)=(-(T(19)*T(23)));
g1(20,32)=1;
g1(20,43)=(-((steady_state(6))*params(9)));
g1(21,33)=1;
g1(21,48)=(-params(19));
g1(22,3)=(-((-y(19))/(y(3)*y(3))/(y(19)/y(3))));
g1(22,19)=(-(1/y(3)/(y(19)/y(3))));
g1(22,34)=1;
g1(23,1)=(-((-y(15))/(y(1)*y(1))/(y(15)/y(1))));
g1(23,15)=(-(1/y(1)/(y(15)/y(1))));
g1(23,35)=1;
g1(24,5)=(-((-y(21))/(y(5)*y(5))/T(7)));
g1(24,21)=(-(1/y(5)/T(7)));
g1(24,36)=1;
g1(25,24)=(-1);
g1(25,37)=1;
g1(26,25)=(-1);
g1(26,38)=1;
g1(27,17)=(-1);
g1(27,39)=1;
g1(28,33)=(-1);
g1(28,40)=1;
g1(29,7)=(-(params(28)*1/y(7)));
g1(29,42)=1/y(42);
g1(29,58)=(-1);
g1(30,8)=(-(params(29)*1/y(8)));
g1(30,43)=1/y(43);
g1(30,59)=(-1);
g1(31,9)=(-(params(30)*1/y(9)));
g1(31,44)=1/y(44);
g1(31,60)=(-1);
g1(32,11)=(-(params(32)*1/y(11)));
g1(32,46)=1/y(46);
g1(32,62)=(-1);
g1(33,10)=(-(params(31)*1/y(10)));
g1(33,45)=1/y(45);
g1(33,61)=(-1);
g1(34,12)=(-(params(33)*1/y(12)));
g1(34,47)=1/y(47);
g1(34,63)=(-1);
g1(35,13)=(-(params(34)*1/y(13)));
g1(35,48)=1/y(48);
g1(35,64)=(-1);

end
