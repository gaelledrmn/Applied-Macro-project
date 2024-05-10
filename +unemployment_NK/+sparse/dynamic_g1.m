function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(27, 1);
end
[T_order, T] = unemployment_NK.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(128, 1);
g1_v(1)=(-((-y(37))/(y(2)*y(2))/(y(37)/y(2))));
g1_v(2)=(-(1-params(6)));
g1_v(3)=(-((-y(41))/(y(6)*y(6))/(y(41)/y(6))));
g1_v(4)=(-(T(5)*params(25)*y(64)*getPowerDeriv(y(7),params(3),1)));
g1_v(5)=1-params(2);
g1_v(6)=y(43)*y(68)*(-(T(6)*(-y(43))/(y(8)*y(8))*2*(T(7)-1)));
g1_v(7)=(-(T(6)*y(68)*y(48)*(y(8)*y(43)*(-(3*y(43)))/(y(8)*y(8))-y(43)*(3*y(43)/y(8)-4))/(y(8)*y(8))));
g1_v(8)=(-((-y(43))/(y(8)*y(8))/T(7)));
g1_v(9)=(-(y(69)*T(23)*getPowerDeriv(y(12),params(16),1)));
g1_v(10)=(-(params(28)*1/y(29)));
g1_v(11)=(-(params(29)*1/y(30)));
g1_v(12)=(-(params(30)*1/y(31)));
g1_v(13)=(-(params(31)*1/y(32)));
g1_v(14)=(-(params(32)*1/y(33)));
g1_v(15)=(-(params(33)*1/y(34)));
g1_v(16)=(-(params(34)*1/y(35)));
g1_v(17)=T(2);
g1_v(18)=(-y(48));
g1_v(19)=1;
g1_v(20)=(-(y(66)*getPowerDeriv(y(37),(-params(4)),1)));
g1_v(21)=(-1);
g1_v(22)=(-(1/y(2)/(y(37)/y(2))));
g1_v(23)=1;
g1_v(24)=(-(T(4)*getPowerDeriv(y(38),1-params(3),1)));
g1_v(25)=(-((-(y(41)*(1-params(3))*y(63)))/(y(38)*y(38))));
g1_v(26)=1;
g1_v(27)=(-y(49));
g1_v(28)=(-T(18));
g1_v(29)=1;
g1_v(30)=(-1);
g1_v(31)=(-1);
g1_v(32)=1;
g1_v(33)=1;
g1_v(34)=(-((1-params(3))*y(63)/y(38)));
g1_v(35)=(y(81)-(steady_state(11)))*y(81)*(-(y(76)*y(79)*params(1)*params(26)/y(44)))/(y(41)*y(41));
g1_v(36)=y(55)*(1-params(24))*params(21)*(1-y(53))*getPowerDeriv(y(41),(-params(24)),1);
g1_v(37)=y(55)*params(21)*T(24)/(params(22)*params(23))*T(25);
g1_v(38)=1-T(17);
g1_v(39)=(-(params(21)*(1-y(53))*T(24)));
g1_v(40)=(-(y(69)*T(19)*T(20)*1/(steady_state(6))*getPowerDeriv(y(41)/(steady_state(6)),params(17),1)*T(26)));
g1_v(41)=(-(1/y(6)/(y(41)/y(6))));
g1_v(42)=(-1);
g1_v(43)=(-(params(3)*y(98)*y(76)))/(y(42)*y(42));
g1_v(44)=y(68)*T(8)+y(43)*y(68)*(-(T(6)*2*(T(7)-1)*1/y(8)));
g1_v(45)=(-(T(6)*y(68)*y(48)*(3*y(43)/y(8)-4+y(43)*3/y(8))/y(8)+T(12)*params(15)*y(83)*T(2)*y(103)*(-((-y(78))/(y(43)*y(43))))+T(11)*(-y(78))/(y(43)*y(43))*2*y(78)/y(43)));
g1_v(46)=(-1);
g1_v(47)=(-(1/y(8)/T(7)));
g1_v(48)=1;
g1_v(49)=y(36)*T(27);
g1_v(50)=(-params(7))/(y(44)*y(44));
g1_v(51)=(-(T(12)*T(10)*params(15)*y(83)*y(103)*T(27)));
g1_v(52)=(-(y(86)*(1-params(6))*T(27)));
g1_v(53)=(y(81)-(steady_state(11)))*y(81)*y(76)*(-(y(79)*params(1)*params(26)))/(y(44)*y(44))/y(41);
g1_v(54)=params(14);
g1_v(55)=(-1);
g1_v(56)=(-(params(26)*y(46)+params(26)*(y(46)-(steady_state(11)))));
g1_v(57)=(-(y(41)*params(26)/2*2*(y(46)-(steady_state(11)))));
g1_v(58)=(-(y(69)*T(19)*T(26)*T(21)*(steady_state(12))*1/(steady_state(11))*getPowerDeriv(y(46)/(steady_state(11)),params(18),1)));
g1_v(59)=(-1);
g1_v(60)=(-(1/y(81)));
g1_v(61)=1;
g1_v(62)=(-1);
g1_v(63)=(-y(36));
g1_v(64)=y(68)-T(9)*y(68)*T(6);
g1_v(65)=(-y(39));
g1_v(66)=params(11)*getPowerDeriv(y(49),params(8),1);
g1_v(67)=(-(y(39)*params(11)/(1+params(8))*getPowerDeriv(y(49),1+params(8),1)));
g1_v(68)=1;
g1_v(69)=1-y(67)*params(12);
g1_v(70)=1;
g1_v(71)=(-1);
g1_v(72)=(-(y(67)*params(12)));
g1_v(73)=1;
g1_v(74)=(-((-(params(22)*getPowerDeriv(y(53),params(23),1)))-T(15)*(-(y(55)*(1-params(24))*params(21)))));
g1_v(75)=(-1);
g1_v(76)=(-(T(16)*(-params(21))));
g1_v(77)=(-1);
g1_v(78)=1;
g1_v(79)=T(15)*(1-y(53))*(1-params(24))*params(21);
g1_v(80)=T(25)*params(21)*T(16)/(params(22)*params(23));
g1_v(81)=1;
g1_v(82)=(-1);
g1_v(83)=1;
g1_v(84)=1;
g1_v(85)=1;
g1_v(86)=1;
g1_v(87)=1;
g1_v(88)=1;
g1_v(89)=1;
g1_v(90)=(-(y(41)*(1-params(3))/y(38)));
g1_v(91)=1;
g1_v(92)=(-(T(5)*params(25)*T(3)));
g1_v(93)=1/y(64);
g1_v(94)=(-((steady_state(6))*params(9)));
g1_v(95)=1/y(65);
g1_v(96)=(-T(1));
g1_v(97)=1/y(66);
g1_v(98)=y(50)*(-params(12))-y(51)*params(12);
g1_v(99)=1/y(67);
g1_v(100)=y(43)*T(8);
g1_v(101)=y(48)-T(9)*T(6)*y(48);
g1_v(102)=1/y(68);
g1_v(103)=(-(T(19)*T(23)));
g1_v(104)=1/y(69);
g1_v(105)=(-params(19));
g1_v(106)=1/y(70);
g1_v(107)=params(3)*y(98)/y(42);
g1_v(108)=(y(81)-(steady_state(11)))*y(81)*y(79)*params(1)*params(26)/y(44)/y(41);
g1_v(109)=(-(T(12)*params(15)*y(83)*T(2)*y(103)*(-(1/y(43)))+T(11)*2*y(78)/y(43)*1/y(43)));
g1_v(110)=y(36)*params(1)/y(44);
g1_v(111)=(-(T(12)*T(10)*params(15)*y(83)*y(103)*params(1)/y(44)));
g1_v(112)=(-(y(86)*(1-params(6))*params(1)/y(44)));
g1_v(113)=(y(81)-(steady_state(11)))*y(81)*y(76)*params(1)*params(26)/y(44)/y(41);
g1_v(114)=T(14)+T(13)*(y(81)-(steady_state(11)));
g1_v(115)=(-((-y(47))/(y(81)*y(81))));
g1_v(116)=1-params(2);
g1_v(117)=(-(T(12)*T(10)*params(15)*T(2)*y(103)));
g1_v(118)=(-(params(1)*(1-params(6))));
g1_v(119)=(-(T(2)*(1-params(6))));
g1_v(120)=params(3)*y(76)/y(42);
g1_v(121)=(-(T(12)*T(10)*params(15)*T(2)*y(83)));
g1_v(122)=(-1);
g1_v(123)=(-1);
g1_v(124)=(-1);
g1_v(125)=(-1);
g1_v(126)=(-1);
g1_v(127)=(-1);
g1_v(128)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 35, 112);
end
