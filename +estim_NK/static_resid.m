function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = estim_NK.static_resid_tt(T, y, x, params);
end
residual = zeros(36, 1);
    residual(1) = (y(11)) - (y(32)*T(1));
    residual(2) = (params(1)*y(1)) - (1);
    residual(3) = (y(11)*y(4)) - (params(6)*y(3)^params(5));
    residual(4) = (y(33)*y(12)) - (1+y(33)*y(12)*params(11)/2*(1+(-y(7))/y(7)));
    residual(5) = (y(5)) - (T(3)*T(4));
    residual(6) = (y(33)*y(7)) - (y(6)-y(6)*(1-params(2)));
    residual(7) = (y(12)*(1-params(2))+y(5)*params(3)*y(13)/y(6)) - (y(1)*y(12));
    residual(8) = (y(4)) - (y(5)*(1-params(3))*y(13)/y(3));
residual(9) = 1-params(10)*y(36)+y(36)*params(10)*y(8)-params(16)*y(9)*(y(9)-(y(9)))+(y(9)-(y(9)))*y(9)*params(1)*params(16);
    residual(10) = (y(13)) - (y(8)-T(5)-y(14)*(1-params(29))*params(26)*(1-y(15))*T(6));
    residual(11) = ((y(14)*params(26)*T(7)/(params(27)*params(28)))^(1/(params(28)-1))) - (y(15));
    residual(12) = (y(5)) - (y(2)+y(7)+y(17)+y(5)*T(5)+y(5)*params(16)/2*T(8));
    residual(13) = (y(16)) - (T(7)*params(26)*(1-y(15)));
    residual(14) = (y(1)) - (y(10)/y(9));
    residual(15) = (y(10)) - (T(9)*T(16)*y(34));
    residual(16) = (y(17)) - ((y(5))*params(7)*y(31));
    residual(17) = (y(14)) - (params(30)*y(35));
residual(18) = y(18);
residual(19) = y(19);
residual(20) = y(20);
    residual(21) = (y(21)) - (y(9)-(y(9)));
    residual(22) = (y(22)) - (y(10)-(y(10)));
    residual(23) = (y(24)) - (log(y(3)/(y(3))));
    residual(24) = (y(23)) - (y(14)-(y(14)));
    residual(25) = (y(25)) - (log(T(13)));
    residual(26) = (y(26)) - (log(y(2)/(y(2))));
    residual(27) = (y(27)) - (log(y(7)/(y(7))));
    residual(28) = (y(28)) - (log(T(10)));
    residual(29) = (y(29)) - (log(y(10)/(y(10))));
    residual(30) = (log(y(30))) - (log(y(30))*params(19)+x(1));
    residual(31) = (log(y(31))) - (log(y(31))*params(20)+x(2));
    residual(32) = (log(y(32))) - (log(y(32))*params(21)+x(3));
    residual(33) = (log(y(36))) - (log(y(36))*params(25)+params(11)/params(10)*x(7));
    residual(34) = (log(y(33))) - (log(y(33))*params(22)+x(4));
    residual(35) = (log(y(34))) - (log(y(34))*params(23)+x(5));
    residual(36) = (log(y(35))) - (log(y(35))*params(24)+x(6));

end
