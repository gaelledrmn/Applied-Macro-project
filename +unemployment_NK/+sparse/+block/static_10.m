function [y, T] = static_10(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(20)=params(19)*y(40);
  y(27)=y(20)-(y(20));
end
