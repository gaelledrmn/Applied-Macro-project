function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = unemployment_NK.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(40, 1);
    residual(1) = (y(22)) - (y(49)*T(1));
    residual(2) = (T(2)*y(14)) - (1);
    residual(3) = (y(28)) - (y(18)-params(10)-params(7)/y(22)+params(1)*(1-params(6))*y(59));
    residual(4) = (y(16)) - ((1-params(6))*y(2)+y(27)*y(17));
    residual(5) = (y(19)) - (T(4)*T(5));
    residual(6) = (y(21)*y(51)*T(8)) - (y(20)-y(4)*(1-params(2)));
    residual(7) = ((1-params(2))*y(58)+params(3)*y(61)*y(54)/y(20)) - (y(14)*y(26));
    residual(8) = (y(51)*y(26)) - (1+T(6)*y(51)*y(26)*T(9)+T(11)*T(12));
    residual(9) = (y(29)) - (y(19)*(1-params(3))*y(41)/y(16)-y(18)+T(2)*(1-params(6))*y(60));
    residual(10) = (params(11)*y(27)^params(8)) - (y(29));
residual(11) = 1-params(14)+params(14)*y(23)-params(26)*y(24)*(y(24)-(steady_state(11)))+T(14)*(y(57)-(steady_state(11)));
    residual(12) = (y(28)*(1-y(50)*params(12))) - (y(29)*y(50)*params(12));
    residual(13) = (y(41)) - (y(23)-params(22)*y(31)^params(23)-y(33)*(1-params(24))*params(21)*(1-y(31))*T(15));
    residual(14) = ((y(33)*params(21)*T(16)/(params(22)*params(23)))^(1/(params(23)-1))) - (y(31));
    residual(15) = (y(19)) - (y(15)+y(21)+y(32)+y(19)*T(17)+y(17)*T(18));
    residual(16) = (y(17)) - (1-y(16));
    residual(17) = (y(14)) - (y(25)/y(57));
    residual(18) = (y(30)) - (T(16)*params(21)*(1-y(31)));
    residual(19) = (y(25)) - (T(19)*T(25)*y(52));
    residual(20) = (y(32)) - ((steady_state(6))*params(9)*y(48));
    residual(21) = (y(33)) - (params(19)*y(53));
    residual(22) = (y(34)) - (log(y(19)/y(3)));
    residual(23) = (y(35)) - (log(y(15)/y(1)));
    residual(24) = (y(36)) - (log(T(7)));
    residual(25) = (y(37)) - (y(24)-(steady_state(11)));
    residual(26) = (y(38)) - (y(25)-(steady_state(12)));
    residual(27) = (y(39)) - (y(17)-(steady_state(4)));
    residual(28) = (y(40)) - (y(33)-(steady_state(20)));
    residual(29) = (y(42)) - (log(T(22)));
    residual(30) = (y(44)) - (log(y(15)/(steady_state(2))));
    residual(31) = (y(43)) - (log(y(21)/(steady_state(8))));
    residual(32) = (y(45)) - (log(T(20)));
    residual(33) = (y(46)) - (log(y(25)/(steady_state(12))));
    residual(34) = (log(y(47))) - (params(28)*log(y(7))+x(it_, 1));
    residual(35) = (log(y(48))) - (params(29)*log(y(8))+x(it_, 2));
    residual(36) = (log(y(49))) - (params(30)*log(y(9))+x(it_, 3));
    residual(37) = (log(y(51))) - (params(32)*log(y(11))+x(it_, 5));
    residual(38) = (log(y(50))) - (params(31)*log(y(10))+x(it_, 4));
    residual(39) = (log(y(52))) - (params(33)*log(y(12))+x(it_, 6));
    residual(40) = (log(y(53))) - (params(34)*log(y(13))+x(it_, 7));

end
