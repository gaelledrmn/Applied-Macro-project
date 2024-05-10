function [y, T] = dynamic_8(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(50)=params(30)*y(71);
  y(59)=y(50)-(steady_state(14));
end
