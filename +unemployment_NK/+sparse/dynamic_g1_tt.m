function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = unemployment_NK.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 27
    T = [T; NaN(27 - size(T, 1), 1)];
end
T(24) = getPowerDeriv(y(41),1-params(24),1);
T(25) = getPowerDeriv(y(55)*params(21)*T(16)/(params(22)*params(23)),1/(params(23)-1),1);
T(26) = getPowerDeriv(T(22),1-params(16),1);
T(27) = (-(params(1)*y(79)))/(y(44)*y(44));
end
