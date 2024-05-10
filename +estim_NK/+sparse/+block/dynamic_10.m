function [y, T] = dynamic_10(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(64)=log(y(45)/(steady_state(9)));
  y(65)=log(y(46)/(steady_state(10)));
  y(63)=log(y(43)/(steady_state(7)));
  y(62)=log(y(38)/(steady_state(2)));
  y(61)=log(y(41)/(steady_state(5)));
  y(60)=log(y(39)/(steady_state(3)));
  y(58)=y(46)-(steady_state(10));
  y(57)=y(45)-(steady_state(9));
  y(56)=log(y(43)/y(7));
  y(55)=log(y(38)/y(2));
  y(54)=log(y(41)/y(5));
  y(52)=T(3)*params(26)*(1-y(51));
end
