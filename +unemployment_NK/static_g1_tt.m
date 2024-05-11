function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 19);

T = unemployment_NK.static_resid_tt(T, y, x, params);

T(17) = getPowerDeriv(y(6),1-params(24),1);
T(18) = getPowerDeriv(y(20)*params(21)*T(6)/(params(22)*params(23)),1/(params(23)-1),1);
T(19) = getPowerDeriv(T(15),1-params(16),1);

end
