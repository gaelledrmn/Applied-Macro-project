function [y, T] = dynamic_8(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(55)=params(19)*y(70);
  y(62)=y(55)-(steady_state(20));
end
