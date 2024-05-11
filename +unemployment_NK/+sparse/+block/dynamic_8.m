function [y, T] = dynamic_8(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(60)=params(19)*y(80);
  y(67)=y(60)-(steady_state(20));
end
