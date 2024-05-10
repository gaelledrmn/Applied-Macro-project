function [y, T] = dynamic_10(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(61)=y(39)-(steady_state(4));
  y(60)=y(47)-(steady_state(12));
  y(59)=y(46)-(steady_state(11));
  y(58)=log(y(43)/y(8));
  y(57)=log(y(37)/y(2));
  y(56)=log(y(41)/y(6));
  y(52)=T(12)*params(21)*(1-y(53));
end
