function [y, T] = static_10(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(14)=params(30)*y(35);
  y(23)=y(14)-(y(14));
end
