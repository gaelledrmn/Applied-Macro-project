function [y, T] = dynamic_10(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(72)=log(y(51)/(steady_state(11)));
  y(73)=log(y(52)/(steady_state(12)));
  y(70)=log(y(48)/(steady_state(8)));
  y(71)=log(y(42)/(steady_state(2)));
  y(69)=log(y(46)/(steady_state(6)));
  y(66)=y(44)-(steady_state(4));
  y(65)=y(52)-(steady_state(12));
  y(64)=y(51)-(steady_state(11));
  y(63)=log(y(48)/y(8));
  y(62)=log(y(42)/y(2));
  y(61)=log(y(46)/y(6));
  y(57)=T(1)*params(21)*(1-y(58));
end
