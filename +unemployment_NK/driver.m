%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'unemployment_NK';
M_.dynare_version = '6.0';
oo_.dynare_version = '6.0';
options_.dynare_version = '6.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(7,1);
M_.exo_names_tex = cell(7,1);
M_.exo_names_long = cell(7,1);
M_.exo_names(1) = {'eta_a'};
M_.exo_names_tex(1) = {'eta\_a'};
M_.exo_names_long(1) = {'eta_a'};
M_.exo_names(2) = {'eta_g'};
M_.exo_names_tex(2) = {'eta\_g'};
M_.exo_names_long(2) = {'eta_g'};
M_.exo_names(3) = {'eta_c'};
M_.exo_names_tex(3) = {'eta\_c'};
M_.exo_names_long(3) = {'eta_c'};
M_.exo_names(4) = {'eta_m'};
M_.exo_names_tex(4) = {'eta\_m'};
M_.exo_names_long(4) = {'eta_m'};
M_.exo_names(5) = {'eta_i'};
M_.exo_names_tex(5) = {'eta\_i'};
M_.exo_names_long(5) = {'eta_i'};
M_.exo_names(6) = {'eta_r'};
M_.exo_names_tex(6) = {'eta\_r'};
M_.exo_names_long(6) = {'eta_r'};
M_.exo_names(7) = {'eta_t'};
M_.exo_names_tex(7) = {'eta\_t'};
M_.exo_names_long(7) = {'eta_t'};
M_.endo_names = cell(35,1);
M_.endo_names_tex = cell(35,1);
M_.endo_names_long = cell(35,1);
M_.endo_names(1) = {'rr'};
M_.endo_names_tex(1) = {'rr'};
M_.endo_names_long(1) = {'rr'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'c'};
M_.endo_names_long(2) = {'c'};
M_.endo_names(3) = {'n'};
M_.endo_names_tex(3) = {'n'};
M_.endo_names_long(3) = {'n'};
M_.endo_names(4) = {'u'};
M_.endo_names_tex(4) = {'u'};
M_.endo_names_long(4) = {'u'};
M_.endo_names(5) = {'w'};
M_.endo_names_tex(5) = {'w'};
M_.endo_names_long(5) = {'w'};
M_.endo_names(6) = {'y'};
M_.endo_names_tex(6) = {'y'};
M_.endo_names_long(6) = {'y'};
M_.endo_names(7) = {'k'};
M_.endo_names_tex(7) = {'k'};
M_.endo_names_long(7) = {'k'};
M_.endo_names(8) = {'i'};
M_.endo_names_tex(8) = {'i'};
M_.endo_names_long(8) = {'i'};
M_.endo_names(9) = {'lb'};
M_.endo_names_tex(9) = {'lb'};
M_.endo_names_long(9) = {'lb'};
M_.endo_names(10) = {'mc'};
M_.endo_names_tex(10) = {'mc'};
M_.endo_names_long(10) = {'mc'};
M_.endo_names(11) = {'pi'};
M_.endo_names_tex(11) = {'pi'};
M_.endo_names_long(11) = {'pi'};
M_.endo_names(12) = {'r'};
M_.endo_names_tex(12) = {'r'};
M_.endo_names_long(12) = {'r'};
M_.endo_names(13) = {'q'};
M_.endo_names_tex(13) = {'q'};
M_.endo_names_long(13) = {'q'};
M_.endo_names(14) = {'x'};
M_.endo_names_tex(14) = {'x'};
M_.endo_names_long(14) = {'x'};
M_.endo_names(15) = {'v_H'};
M_.endo_names_tex(15) = {'v\_H'};
M_.endo_names_long(15) = {'v_H'};
M_.endo_names(16) = {'v_P'};
M_.endo_names_tex(16) = {'v\_P'};
M_.endo_names_long(16) = {'v_P'};
M_.endo_names(17) = {'e'};
M_.endo_names_tex(17) = {'e'};
M_.endo_names_long(17) = {'e'};
M_.endo_names(18) = {'mu'};
M_.endo_names_tex(18) = {'mu'};
M_.endo_names_long(18) = {'mu'};
M_.endo_names(19) = {'g'};
M_.endo_names_tex(19) = {'g'};
M_.endo_names_long(19) = {'g'};
M_.endo_names(20) = {'tau'};
M_.endo_names_tex(20) = {'tau'};
M_.endo_names_long(20) = {'tau'};
M_.endo_names(21) = {'gy_obs'};
M_.endo_names_tex(21) = {'gy\_obs'};
M_.endo_names_long(21) = {'gy_obs'};
M_.endo_names(22) = {'gc_obs'};
M_.endo_names_tex(22) = {'gc\_obs'};
M_.endo_names_long(22) = {'gc_obs'};
M_.endo_names(23) = {'gi_obs'};
M_.endo_names_tex(23) = {'gi\_obs'};
M_.endo_names_long(23) = {'gi_obs'};
M_.endo_names(24) = {'pi_obs'};
M_.endo_names_tex(24) = {'pi\_obs'};
M_.endo_names_long(24) = {'pi_obs'};
M_.endo_names(25) = {'r_obs'};
M_.endo_names_tex(25) = {'r\_obs'};
M_.endo_names_long(25) = {'r_obs'};
M_.endo_names(26) = {'u_obs'};
M_.endo_names_tex(26) = {'u\_obs'};
M_.endo_names_long(26) = {'u_obs'};
M_.endo_names(27) = {'pe_obs'};
M_.endo_names_tex(27) = {'pe\_obs'};
M_.endo_names_long(27) = {'pe_obs'};
M_.endo_names(28) = {'varrho'};
M_.endo_names_tex(28) = {'varrho'};
M_.endo_names_long(28) = {'varrho'};
M_.endo_names(29) = {'e_a'};
M_.endo_names_tex(29) = {'e\_a'};
M_.endo_names_long(29) = {'e_a'};
M_.endo_names(30) = {'e_g'};
M_.endo_names_tex(30) = {'e\_g'};
M_.endo_names_long(30) = {'e_g'};
M_.endo_names(31) = {'e_c'};
M_.endo_names_tex(31) = {'e\_c'};
M_.endo_names_long(31) = {'e_c'};
M_.endo_names(32) = {'e_m'};
M_.endo_names_tex(32) = {'e\_m'};
M_.endo_names_long(32) = {'e_m'};
M_.endo_names(33) = {'e_i'};
M_.endo_names_tex(33) = {'e\_i'};
M_.endo_names_long(33) = {'e_i'};
M_.endo_names(34) = {'e_r'};
M_.endo_names_tex(34) = {'e\_r'};
M_.endo_names_long(34) = {'e_r'};
M_.endo_names(35) = {'e_t'};
M_.endo_names_tex(35) = {'e\_t'};
M_.endo_names_long(35) = {'e_t'};
M_.endo_partitions = struct();
M_.param_names = cell(34,1);
M_.param_names_tex = cell(34,1);
M_.param_names_long = cell(34,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'delta'};
M_.param_names_tex(2) = {'delta'};
M_.param_names_long(2) = {'delta'};
M_.param_names(3) = {'alpha'};
M_.param_names_tex(3) = {'alpha'};
M_.param_names_long(3) = {'alpha'};
M_.param_names(4) = {'sigmaC'};
M_.param_names_tex(4) = {'sigmaC'};
M_.param_names_long(4) = {'sigmaC'};
M_.param_names(5) = {'sigmaL'};
M_.param_names_tex(5) = {'sigmaL'};
M_.param_names_long(5) = {'sigmaL'};
M_.param_names(6) = {'delta_N'};
M_.param_names_tex(6) = {'delta\_N'};
M_.param_names_long(6) = {'delta_N'};
M_.param_names(7) = {'chi'};
M_.param_names_tex(7) = {'chi'};
M_.param_names_long(7) = {'chi'};
M_.param_names(8) = {'phi'};
M_.param_names_tex(8) = {'phi'};
M_.param_names_long(8) = {'phi'};
M_.param_names(9) = {'gy'};
M_.param_names_tex(9) = {'gy'};
M_.param_names_long(9) = {'gy'};
M_.param_names(10) = {'b'};
M_.param_names_tex(10) = {'b'};
M_.param_names_long(10) = {'b'};
M_.param_names(11) = {'Gam'};
M_.param_names_tex(11) = {'Gam'};
M_.param_names_long(11) = {'Gam'};
M_.param_names(12) = {'eta'};
M_.param_names_tex(12) = {'eta'};
M_.param_names_long(12) = {'eta'};
M_.param_names(13) = {'gamma'};
M_.param_names_tex(13) = {'gamma'};
M_.param_names_long(13) = {'gamma'};
M_.param_names(14) = {'epsilon'};
M_.param_names_tex(14) = {'epsilon'};
M_.param_names_long(14) = {'epsilon'};
M_.param_names(15) = {'kappa'};
M_.param_names_tex(15) = {'kappa'};
M_.param_names_long(15) = {'kappa'};
M_.param_names(16) = {'rho'};
M_.param_names_tex(16) = {'rho'};
M_.param_names_long(16) = {'rho'};
M_.param_names(17) = {'phi_y'};
M_.param_names_tex(17) = {'phi\_y'};
M_.param_names_long(17) = {'phi_y'};
M_.param_names(18) = {'phi_pi'};
M_.param_names_tex(18) = {'phi\_pi'};
M_.param_names_long(18) = {'phi_pi'};
M_.param_names(19) = {'tau0'};
M_.param_names_tex(19) = {'tau0'};
M_.param_names_long(19) = {'tau0'};
M_.param_names(20) = {'y0'};
M_.param_names_tex(20) = {'y0'};
M_.param_names_long(20) = {'y0'};
M_.param_names(21) = {'sig'};
M_.param_names_tex(21) = {'sig'};
M_.param_names_long(21) = {'sig'};
M_.param_names(22) = {'theta1'};
M_.param_names_tex(22) = {'theta1'};
M_.param_names_long(22) = {'theta1'};
M_.param_names(23) = {'theta2'};
M_.param_names_tex(23) = {'theta2'};
M_.param_names_long(23) = {'theta2'};
M_.param_names(24) = {'varphi'};
M_.param_names_tex(24) = {'varphi'};
M_.param_names_long(24) = {'varphi'};
M_.param_names(25) = {'A'};
M_.param_names_tex(25) = {'A'};
M_.param_names_long(25) = {'A'};
M_.param_names(26) = {'xi'};
M_.param_names_tex(26) = {'xi'};
M_.param_names_long(26) = {'xi'};
M_.param_names(27) = {'piss'};
M_.param_names_tex(27) = {'piss'};
M_.param_names_long(27) = {'piss'};
M_.param_names(28) = {'rho_a'};
M_.param_names_tex(28) = {'rho\_a'};
M_.param_names_long(28) = {'rho_a'};
M_.param_names(29) = {'rho_g'};
M_.param_names_tex(29) = {'rho\_g'};
M_.param_names_long(29) = {'rho_g'};
M_.param_names(30) = {'rho_c'};
M_.param_names_tex(30) = {'rho\_c'};
M_.param_names_long(30) = {'rho_c'};
M_.param_names(31) = {'rho_m'};
M_.param_names_tex(31) = {'rho\_m'};
M_.param_names_long(31) = {'rho_m'};
M_.param_names(32) = {'rho_i'};
M_.param_names_tex(32) = {'rho\_i'};
M_.param_names_long(32) = {'rho_i'};
M_.param_names(33) = {'rho_r'};
M_.param_names_tex(33) = {'rho\_r'};
M_.param_names_long(33) = {'rho_r'};
M_.param_names(34) = {'rho_t'};
M_.param_names_tex(34) = {'rho\_t'};
M_.param_names_long(34) = {'rho_t'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 7;
M_.endo_nbr = 35;
M_.param_nbr = 34;
M_.orig_endo_nbr = 35;
M_.aux_vars = [];
options_.varobs = cell(7, 1);
options_.varobs(1)  = {'gy_obs'};
options_.varobs(2)  = {'pi_obs'};
options_.varobs(3)  = {'r_obs'};
options_.varobs(4)  = {'gc_obs'};
options_.varobs(5)  = {'gi_obs'};
options_.varobs(6)  = {'u_obs'};
options_.varobs(7)  = {'pe_obs'};
options_.varobs_id = [ 21 24 25 22 23 26 27  ];
M_.Sigma_e = zeros(7, 7);
M_.Correlation_matrix = eye(7, 7);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.eq_nbr = 35;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 14 0;
 1 15 0;
 2 16 0;
 0 17 0;
 0 18 0;
 3 19 49;
 4 20 0;
 5 21 50;
 0 22 51;
 0 23 0;
 0 24 52;
 6 25 0;
 0 26 53;
 0 27 0;
 0 28 54;
 0 29 55;
 0 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 56;
 7 42 0;
 8 43 0;
 9 44 0;
 10 45 0;
 11 46 57;
 12 47 0;
 13 48 0;]';
M_.nstatic = 16;
M_.nfwrd   = 6;
M_.npred   = 10;
M_.nboth   = 3;
M_.nsfwrd   = 9;
M_.nspred   = 13;
M_.ndynamic   = 19;
M_.dynamic_tmp_nbr = [23; 4; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'marginal utility of consumption' ;
  2 , 'name' , 'Euler' ;
  3 , 'name' , 'Labor Supply' ;
  4 , 'name' , 'Employment law of motion' ;
  5 , 'name' , 'technology' ;
  6 , 'name' , 'Capital law of motion' ;
  7 , 'name' , 'FOC k' ;
  8 , 'name' , 'FOC i' ;
  9 , 'name' , 'FOC n' ;
  10 , 'name' , 'FOC x' ;
  11 , 'name' , 'NKPC' ;
  12 , 'name' , 'wage' ;
  13 , 'name' , 'FOC y' ;
  14 , 'name' , 'FOC mu' ;
  15 , 'name' , 'Resources Constraint' ;
  16 , 'name' , 'Unemployment rate' ;
  17 , 'name' , 'Fisherian equation' ;
  18 , 'name' , 'Total emissions' ;
  19 , 'name' , 'Monetary Policy rule' ;
  20 , 'name' , 'Public spending' ;
  21 , 'name' , 'Carbon tax' ;
  22 , 'name' , 'measurement GDP' ;
  23 , 'name' , 'measurement consumption' ;
  24 , 'name' , 'measurement investment' ;
  25 , 'name' , 'measurement inflation' ;
  26 , 'name' , 'measurement interest rate' ;
  27 , 'name' , 'measurement unemployment' ;
  28 , 'name' , 'measurement carbon tax' ;
  29 , 'name' , 'shocks' ;
  30 , 'name' , '30' ;
  31 , 'name' , '31' ;
  32 , 'name' , '32' ;
  33 , 'name' , '33' ;
  34 , 'name' , '34' ;
  35 , 'name' , '35' ;
};
M_.mapping.rr.eqidx = [2 7 17 ];
M_.mapping.c.eqidx = [1 15 23 ];
M_.mapping.n.eqidx = [4 5 9 16 ];
M_.mapping.u.eqidx = [4 15 16 27 ];
M_.mapping.w.eqidx = [3 9 ];
M_.mapping.y.eqidx = [5 7 9 11 13 14 15 18 19 20 22 ];
M_.mapping.k.eqidx = [5 6 7 ];
M_.mapping.i.eqidx = [6 8 15 24 ];
M_.mapping.lb.eqidx = [1 2 3 8 9 11 ];
M_.mapping.mc.eqidx = [11 13 ];
M_.mapping.pi.eqidx = [11 15 17 19 25 ];
M_.mapping.r.eqidx = [17 19 26 ];
M_.mapping.q.eqidx = [7 8 ];
M_.mapping.x.eqidx = [4 10 15 ];
M_.mapping.v_H.eqidx = [3 12 ];
M_.mapping.v_P.eqidx = [9 10 12 ];
M_.mapping.e.eqidx = [18 ];
M_.mapping.mu.eqidx = [13 14 18 ];
M_.mapping.g.eqidx = [15 20 ];
M_.mapping.tau.eqidx = [13 14 21 28 ];
M_.mapping.gy_obs.eqidx = [22 ];
M_.mapping.gc_obs.eqidx = [23 ];
M_.mapping.gi_obs.eqidx = [24 ];
M_.mapping.pi_obs.eqidx = [25 ];
M_.mapping.r_obs.eqidx = [26 ];
M_.mapping.u_obs.eqidx = [27 ];
M_.mapping.pe_obs.eqidx = [28 ];
M_.mapping.varrho.eqidx = [7 9 13 ];
M_.mapping.e_a.eqidx = [5 29 ];
M_.mapping.e_g.eqidx = [20 30 ];
M_.mapping.e_c.eqidx = [1 31 ];
M_.mapping.e_m.eqidx = [12 33 ];
M_.mapping.e_i.eqidx = [6 8 32 ];
M_.mapping.e_r.eqidx = [19 34 ];
M_.mapping.e_t.eqidx = [21 35 ];
M_.mapping.eta_a.eqidx = [29 ];
M_.mapping.eta_g.eqidx = [30 ];
M_.mapping.eta_c.eqidx = [31 ];
M_.mapping.eta_m.eqidx = [33 ];
M_.mapping.eta_i.eqidx = [32 ];
M_.mapping.eta_r.eqidx = [34 ];
M_.mapping.eta_t.eqidx = [35 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 29];
M_.block_structure.block(1).variable = [ 29];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 3;
M_.block_structure.block(2).endo_nbr = 1;
M_.block_structure.block(2).mfs = 1;
M_.block_structure.block(2).equation = [ 30];
M_.block_structure.block(2).variable = [ 30];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(3).Simulation_Type = 3;
M_.block_structure.block(3).endo_nbr = 1;
M_.block_structure.block(3).mfs = 1;
M_.block_structure.block(3).equation = [ 31];
M_.block_structure.block(3).variable = [ 31];
M_.block_structure.block(3).is_linear = false;
M_.block_structure.block(3).NNZDerivatives = 2;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(4).Simulation_Type = 3;
M_.block_structure.block(4).endo_nbr = 1;
M_.block_structure.block(4).mfs = 1;
M_.block_structure.block(4).equation = [ 32];
M_.block_structure.block(4).variable = [ 33];
M_.block_structure.block(4).is_linear = false;
M_.block_structure.block(4).NNZDerivatives = 2;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(5).Simulation_Type = 3;
M_.block_structure.block(5).endo_nbr = 1;
M_.block_structure.block(5).mfs = 1;
M_.block_structure.block(5).equation = [ 33];
M_.block_structure.block(5).variable = [ 32];
M_.block_structure.block(5).is_linear = false;
M_.block_structure.block(5).NNZDerivatives = 2;
M_.block_structure.block(5).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(6).Simulation_Type = 3;
M_.block_structure.block(6).endo_nbr = 1;
M_.block_structure.block(6).mfs = 1;
M_.block_structure.block(6).equation = [ 34];
M_.block_structure.block(6).variable = [ 34];
M_.block_structure.block(6).is_linear = false;
M_.block_structure.block(6).NNZDerivatives = 2;
M_.block_structure.block(6).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(7).Simulation_Type = 3;
M_.block_structure.block(7).endo_nbr = 1;
M_.block_structure.block(7).mfs = 1;
M_.block_structure.block(7).equation = [ 35];
M_.block_structure.block(7).variable = [ 35];
M_.block_structure.block(7).is_linear = false;
M_.block_structure.block(7).NNZDerivatives = 2;
M_.block_structure.block(7).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(8).Simulation_Type = 1;
M_.block_structure.block(8).endo_nbr = 2;
M_.block_structure.block(8).mfs = 2;
M_.block_structure.block(8).equation = [ 21 28];
M_.block_structure.block(8).variable = [ 20 27];
M_.block_structure.block(8).is_linear = true;
M_.block_structure.block(8).NNZDerivatives = 3;
M_.block_structure.block(8).bytecode_jacob_cols_to_sparse = [3 4 ];
M_.block_structure.block(9).Simulation_Type = 8;
M_.block_structure.block(9).endo_nbr = 19;
M_.block_structure.block(9).mfs = 17;
M_.block_structure.block(9).equation = [ 16 20 11 13 17 4 3 1 19 6 5 8 10 12 14 15 7 2 9];
M_.block_structure.block(9).variable = [ 4 19 10 18 1 14 5 2 12 7 3 8 16 15 6 11 13 9 28];
M_.block_structure.block(9).is_linear = false;
M_.block_structure.block(9).NNZDerivatives = 73;
M_.block_structure.block(9).bytecode_jacob_cols_to_sparse = [7 8 9 10 0 0 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 44 45 46 47 48 49 50 51 ];
M_.block_structure.block(10).Simulation_Type = 1;
M_.block_structure.block(10).endo_nbr = 7;
M_.block_structure.block(10).mfs = 7;
M_.block_structure.block(10).equation = [ 27 26 25 24 23 22 18];
M_.block_structure.block(10).variable = [ 26 25 24 23 22 21 17];
M_.block_structure.block(10).is_linear = true;
M_.block_structure.block(10).NNZDerivatives = 7;
M_.block_structure.block(10).bytecode_jacob_cols_to_sparse = [8 9 10 11 12 13 14 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(6).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(6).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(6).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(7).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(7).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(7).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(8).g1_sparse_rowval = int32([]);
M_.block_structure.block(8).g1_sparse_colval = int32([]);
M_.block_structure.block(8).g1_sparse_colptr = int32([]);
M_.block_structure.block(9).g1_sparse_rowval = int32([7 8 9 4 8 10 1 2 2 13 3 15 16 4 11 14 5 17 6 14 3 7 8 15 4 9 14 17 8 10 14 11 12 17 5 12 1 2 7 9 13 14 17 1 7 14 10 15 1 5 6 10 16 17 2 17 10 17 5 1 15 1 3 10 15 1 10 16 17 15 ]);
M_.block_structure.block(9).g1_sparse_colval = int32([7 8 8 9 10 10 18 18 19 19 20 20 20 21 21 21 22 22 23 23 24 24 25 25 26 26 26 26 27 27 27 28 28 28 29 29 30 30 30 30 30 30 30 31 31 31 32 32 33 33 33 33 33 33 34 34 44 45 46 47 47 48 48 49 49 50 50 50 50 51 ]);
M_.block_structure.block(9).g1_sparse_colptr = int32([1 1 1 1 1 1 1 2 4 5 7 7 7 7 7 7 7 7 9 11 14 17 19 21 23 25 29 32 35 37 44 47 49 55 57 57 57 57 57 57 57 57 57 57 58 59 60 62 64 66 70 71 ]);
M_.block_structure.block(10).g1_sparse_rowval = int32([]);
M_.block_structure.block(10).g1_sparse_colval = int32([]);
M_.block_structure.block(10).g1_sparse_colptr = int32([]);
M_.block_structure.variable_reordered = [ 29 30 31 33 32 34 35 20 27 4 19 10 18 1 14 5 2 12 7 3 8 16 15 6 11 13 9 28 26 25 24 23 22 21 17];
M_.block_structure.equation_reordered = [ 29 30 31 32 33 34 35 21 28 16 20 11 13 17 4 3 1 19 6 5 8 10 12 14 15 7 2 9 27 26 25 24 23 22 18];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 4 3;
 5 7;
 6 7;
 6 8;
 8 8;
 19 12;
 22 6;
 23 2;
 24 8;
 29 29;
 30 30;
 31 31;
 32 33;
 33 32;
 34 34;
 35 35;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 2;
 1 9;
 1 31;
 2 1;
 2 9;
 3 5;
 3 9;
 3 15;
 4 3;
 4 4;
 4 14;
 5 3;
 5 6;
 5 29;
 6 7;
 6 8;
 6 33;
 7 1;
 7 7;
 7 13;
 8 8;
 8 9;
 8 13;
 8 33;
 9 3;
 9 5;
 9 6;
 9 9;
 9 16;
 9 28;
 10 14;
 10 16;
 11 6;
 11 9;
 11 10;
 11 11;
 12 15;
 12 16;
 12 32;
 13 6;
 13 10;
 13 18;
 13 20;
 13 28;
 14 6;
 14 18;
 14 20;
 15 2;
 15 4;
 15 6;
 15 8;
 15 11;
 15 14;
 15 19;
 16 3;
 16 4;
 17 1;
 17 12;
 18 6;
 18 17;
 18 18;
 19 6;
 19 11;
 19 12;
 19 34;
 20 19;
 20 30;
 21 20;
 21 35;
 22 6;
 22 21;
 23 2;
 23 22;
 24 8;
 24 23;
 25 11;
 25 24;
 26 12;
 26 25;
 27 4;
 27 26;
 28 20;
 28 27;
 29 29;
 30 30;
 31 31;
 32 33;
 33 32;
 34 34;
 35 35;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 9;
 3 15;
 7 6;
 7 13;
 7 28;
 8 8;
 8 9;
 8 13;
 8 33;
 9 9;
 9 16;
 11 6;
 11 9;
 11 11;
 17 11;
];
M_.block_structure.dyn_tmp_nbr = 16;
M_.state_var = [29 30 31 33 32 34 35 2 12 7 3 8 6 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(35, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(7, 1);
M_.params = NaN(34, 1);
M_.endo_trends = struct('deflator', cell(35, 1), 'log_deflator', cell(35, 1), 'growth_factor', cell(35, 1), 'log_growth_factor', cell(35, 1));
M_.NNZDerivatives = [128; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([23 4 22 5 6 6 8 24 19 29 30 31 33 32 34 35 2 7 17 1 15 23 4 5 9 16 4 15 16 27 3 9 5 9 11 13 14 15 18 19 22 6 7 6 8 15 24 1 2 3 8 9 11 11 13 11 15 19 25 17 19 26 7 8 4 10 15 3 12 9 10 12 18 13 14 18 15 20 13 14 21 28 22 23 24 25 26 27 28 9 13 5 29 20 30 1 31 12 33 6 8 32 19 34 21 35 7 11 8 2 8 9 11 11 17 7 8 3 9 7 8 29 30 31 33 32 34 35 ]);
M_.dynamic_g1_sparse_colval = int32([2 3 6 7 7 8 8 8 12 29 30 31 32 33 34 35 36 36 36 37 37 37 38 38 38 38 39 39 39 39 40 40 41 41 41 41 41 41 41 41 41 42 42 43 43 43 43 44 44 44 44 44 44 45 45 46 46 46 46 47 47 47 48 48 49 49 49 50 50 51 51 51 52 53 53 53 54 54 55 55 55 55 56 57 58 59 60 61 62 63 63 64 64 65 65 66 66 67 67 68 68 68 69 69 70 70 76 76 78 79 79 79 79 81 81 83 83 85 86 98 103 106 107 108 109 110 111 112 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 2 3 3 3 4 6 9 9 9 9 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 11 12 13 14 15 16 17 20 23 27 31 33 42 44 48 54 56 60 63 65 68 70 73 74 77 79 83 84 85 86 87 88 89 90 92 94 96 98 100 103 105 107 107 107 107 107 107 109 109 110 114 114 116 116 118 118 119 120 120 120 120 120 120 120 120 120 120 120 120 121 121 121 121 121 122 122 122 123 124 125 126 127 128 129 ]);
M_.lhs = {
'lb'; 
'beta*lb(1)/lb*rr'; 
'v_H'; 
'n'; 
'y'; 
'i*e_i*(1-kappa/2*(i/i(-1)-1)^2)'; 
'(1-delta)*q(1)+alpha*varrho(1)*y(1)/k'; 
'e_i*q'; 
'v_P'; 
'Gam*x^phi'; 
'1-epsilon+epsilon*mc-xi*pi*(pi-(pi))+y(1)*lb(1)*beta*xi/lb/y*pi(1)*(pi(1)-(pi))'; 
'v_H*(1-e_m*eta)'; 
'varrho'; 
'(tau*sig*y^(1-varphi)/(theta1*theta2))^(1/(theta2-1))'; 
'y'; 
'u'; 
'rr'; 
'e'; 
'r'; 
'g'; 
'tau'; 
'gy_obs'; 
'gc_obs'; 
'gi_obs'; 
'pi_obs'; 
'r_obs'; 
'u_obs'; 
'pe_obs'; 
'log(e_a)'; 
'log(e_g)'; 
'log(e_c)'; 
'log(e_i)'; 
'log(e_m)'; 
'log(e_r)'; 
'log(e_t)'; 
};
M_.static_tmp_nbr = [14; 3; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 2];
M_.block_structure_stat.block(1).variable = [ 1];
M_.block_structure_stat.block(2).Simulation_Type = 1;
M_.block_structure_stat.block(2).endo_nbr = 3;
M_.block_structure_stat.block(2).mfs = 3;
M_.block_structure_stat.block(2).equation = [ 22 23 24];
M_.block_structure_stat.block(2).variable = [ 21 22 23];
M_.block_structure_stat.block(3).Simulation_Type = 3;
M_.block_structure_stat.block(3).endo_nbr = 1;
M_.block_structure_stat.block(3).mfs = 1;
M_.block_structure_stat.block(3).equation = [ 29];
M_.block_structure_stat.block(3).variable = [ 29];
M_.block_structure_stat.block(4).Simulation_Type = 3;
M_.block_structure_stat.block(4).endo_nbr = 1;
M_.block_structure_stat.block(4).mfs = 1;
M_.block_structure_stat.block(4).equation = [ 30];
M_.block_structure_stat.block(4).variable = [ 30];
M_.block_structure_stat.block(5).Simulation_Type = 3;
M_.block_structure_stat.block(5).endo_nbr = 1;
M_.block_structure_stat.block(5).mfs = 1;
M_.block_structure_stat.block(5).equation = [ 31];
M_.block_structure_stat.block(5).variable = [ 31];
M_.block_structure_stat.block(6).Simulation_Type = 3;
M_.block_structure_stat.block(6).endo_nbr = 1;
M_.block_structure_stat.block(6).mfs = 1;
M_.block_structure_stat.block(6).equation = [ 32];
M_.block_structure_stat.block(6).variable = [ 33];
M_.block_structure_stat.block(7).Simulation_Type = 3;
M_.block_structure_stat.block(7).endo_nbr = 1;
M_.block_structure_stat.block(7).mfs = 1;
M_.block_structure_stat.block(7).equation = [ 33];
M_.block_structure_stat.block(7).variable = [ 32];
M_.block_structure_stat.block(8).Simulation_Type = 3;
M_.block_structure_stat.block(8).endo_nbr = 1;
M_.block_structure_stat.block(8).mfs = 1;
M_.block_structure_stat.block(8).equation = [ 34];
M_.block_structure_stat.block(8).variable = [ 34];
M_.block_structure_stat.block(9).Simulation_Type = 3;
M_.block_structure_stat.block(9).endo_nbr = 1;
M_.block_structure_stat.block(9).mfs = 1;
M_.block_structure_stat.block(9).equation = [ 35];
M_.block_structure_stat.block(9).variable = [ 35];
M_.block_structure_stat.block(10).Simulation_Type = 1;
M_.block_structure_stat.block(10).endo_nbr = 2;
M_.block_structure_stat.block(10).mfs = 2;
M_.block_structure_stat.block(10).equation = [ 21 28];
M_.block_structure_stat.block(10).variable = [ 20 27];
M_.block_structure_stat.block(11).Simulation_Type = 6;
M_.block_structure_stat.block(11).endo_nbr = 18;
M_.block_structure_stat.block(11).mfs = 18;
M_.block_structure_stat.block(11).equation = [ 14 15 16 17 11 19 20 12 1 3 4 10 9 8 13 5 6 7];
M_.block_structure_stat.block(11).variable = [ 6 2 3 12 10 11 19 16 9 15 4 14 5 13 18 7 8 28];
M_.block_structure_stat.block(12).Simulation_Type = 1;
M_.block_structure_stat.block(12).endo_nbr = 4;
M_.block_structure_stat.block(12).mfs = 4;
M_.block_structure_stat.block(12).equation = [ 27 26 25 18];
M_.block_structure_stat.block(12).variable = [ 26 25 24 17];
M_.block_structure_stat.variable_reordered = [ 1 21 22 23 29 30 31 33 32 34 35 20 27 6 2 3 12 10 11 19 16 9 15 4 14 5 13 18 7 8 28 26 25 24 17];
M_.block_structure_stat.equation_reordered = [ 2 22 23 24 29 30 31 32 33 34 35 21 28 14 15 16 17 11 19 20 12 1 3 4 10 9 8 13 5 6 7 27 26 25 18];
M_.block_structure_stat.incidence.sparse_IM = [
 1 2;
 1 9;
 1 31;
 2 1;
 3 5;
 3 9;
 3 15;
 4 3;
 4 4;
 4 14;
 5 3;
 5 6;
 5 7;
 5 29;
 6 7;
 6 8;
 6 33;
 7 1;
 7 6;
 7 7;
 7 13;
 7 28;
 8 13;
 8 33;
 9 3;
 9 5;
 9 6;
 9 16;
 9 28;
 10 14;
 10 16;
 11 10;
 11 11;
 12 15;
 12 16;
 12 32;
 13 6;
 13 10;
 13 18;
 13 20;
 13 28;
 14 6;
 14 18;
 14 20;
 15 2;
 15 4;
 15 6;
 15 8;
 15 14;
 15 19;
 16 3;
 16 4;
 17 1;
 17 11;
 17 12;
 18 6;
 18 17;
 18 18;
 19 6;
 19 11;
 19 12;
 19 34;
 20 6;
 20 19;
 20 30;
 21 20;
 21 35;
 22 21;
 23 22;
 24 23;
 25 24;
 26 25;
 27 26;
 28 27;
 29 29;
 30 30;
 31 31;
 32 33;
 33 32;
 34 34;
 35 35;
];
M_.block_structure_stat.tmp_nbr = 21;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(6).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(7).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(8).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(8).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(8).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(9).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(9).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(9).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(10).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(10).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(10).g1_sparse_colptr = int32([]);
M_.block_structure_stat.block(11).g1_sparse_rowval = int32([1 2 6 7 13 15 16 18 2 9 3 11 13 16 4 6 5 15 4 5 6 2 7 8 12 13 9 10 8 10 2 3 11 2 11 12 10 13 14 18 1 15 16 17 18 2 17 13 15 18 ]);
M_.block_structure_stat.block(11).g1_sparse_colval = int32([1 1 1 1 1 1 1 1 2 2 3 3 3 3 4 4 5 5 6 6 6 7 7 8 8 8 9 9 10 10 11 11 11 12 12 12 13 13 14 14 15 15 16 16 16 17 17 18 18 18 ]);
M_.block_structure_stat.block(11).g1_sparse_colptr = int32([1 9 11 15 17 19 22 24 27 29 31 34 37 39 41 43 46 48 51 ]);
M_.block_structure_stat.block(12).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(12).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(12).g1_sparse_colptr = int32([]);
M_.static_g1_sparse_rowval = int32([2 7 17 1 15 4 5 9 16 4 15 16 3 9 5 7 9 13 14 15 18 19 20 5 6 7 6 15 1 3 11 13 11 17 19 17 19 7 8 4 10 15 3 12 9 10 12 18 13 14 18 15 20 13 14 21 22 23 24 25 26 27 28 7 9 13 5 29 20 30 1 31 12 33 6 8 32 19 34 21 35 ]);
M_.static_g1_sparse_colval = int32([1 1 1 2 2 3 3 3 3 4 4 4 5 5 6 6 6 6 6 6 6 6 6 7 7 7 8 8 9 9 10 10 11 11 11 12 12 13 13 14 14 14 15 15 16 16 16 17 18 18 18 19 19 20 20 20 21 22 23 24 25 26 27 28 28 28 29 29 30 30 31 31 32 32 33 33 33 34 34 35 35 ]);
M_.static_g1_sparse_colptr = int32([1 4 6 10 13 15 24 27 29 31 33 36 38 40 43 45 48 49 52 54 57 58 59 60 61 62 63 64 67 69 71 73 75 78 80 82 ]);
close all;
M_.params(6) = .1;
delta_N = M_.params(6);
M_.params(12) = .5;
eta = M_.params(12);
M_.params(8) = 0.05;
phi = M_.params(8);
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 0.025;
delta = M_.params(2);
M_.params(3) = 0.35;
alpha = M_.params(3);
M_.params(9) = 0.55;
gy = M_.params(9);
M_.params(4) = 1;
sigmaC = M_.params(4);
M_.params(5) = 2;
sigmaL = M_.params(5);
M_.params(14) = 10;
epsilon = M_.params(14);
M_.params(16) = .8;
rho = M_.params(16);
M_.params(17) = 0.1;
phi_y = M_.params(17);
M_.params(18) = 1.5;
phi_pi = M_.params(18);
M_.params(26) = 80;
xi = M_.params(26);
M_.params(15) = 4;
kappa = M_.params(15);
M_.params(13) = .85;
gamma = M_.params(13);
M_.params(24) = 0.15;
varphi = M_.params(24);
M_.params(27) = 1.005;
piss = M_.params(27);
M_.params(19) = 0.05;
tau0 = M_.params(19);
M_.params(21) = 0.25;
sig = M_.params(21);
M_.params(20) = 2.6;
y0 = M_.params(20);
M_.params(22) = 0.05;
theta1 = M_.params(22);
M_.params(23) = 2.6;
theta2 = M_.params(23);
Hss		= 1/3;		
M_.params(28) = 0.95;
rho_a = M_.params(28);
M_.params(29) = 0.95;
rho_g = M_.params(29);
M_.params(30) = 0.95;
rho_c = M_.params(30);
M_.params(31) = 0.95;
rho_m = M_.params(31);
M_.params(32) = 0.95;
rho_i = M_.params(32);
M_.params(33) = 0.40;
rho_r = M_.params(33);
M_.params(34) = 0.8;
rho_t = M_.params(34);
if isempty(estim_params_)
    estim_params_.var_exo = zeros(0, 10);
    estim_params_.var_endo = zeros(0, 10);
    estim_params_.corrx = zeros(0, 11);
    estim_params_.corrn = zeros(0, 11);
    estim_params_.param_vals = zeros(0, 10);
end
if ~isempty(find(estim_params_.var_exo(:,1)==2))
    error('The standard deviation for eta_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 2, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==29))
    error('Parameter rho_g has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 29, .92, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==6))
    error('The standard deviation for eta_r has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 6, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==33))
    error('Parameter rho_r has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 33, .5, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==3))
    error('The standard deviation for eta_c has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 3, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==30))
    error('Parameter rho_c has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 30, .96, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==5))
    error('The standard deviation for eta_i has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 5, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==32))
    error('Parameter rho_i has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 32, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==7))
    error('The standard deviation for eta_t has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 7, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==34))
    error('Parameter rho_t has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 34, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==1))
    error('The standard deviation for eta_a has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 1, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==28))
    error('Parameter rho_a has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 28, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.var_exo(:,1)==4))
    error('The standard deviation for eta_m has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.var_exo = [estim_params_.var_exo; 4, NaN, NaN, NaN, 4, .01, 2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==31))
    error('Parameter rho_m has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 31, .9, NaN, NaN, 1, .5, 0.2, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==4))
    error('Parameter sigmaC has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 4, 2, NaN, NaN, 3, 1.5, .35, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==5))
    error('Parameter sigmaL has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 5, 0.8, NaN, NaN, 2, 2, 0.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==6))
    error('Parameter delta_N has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 6, NaN, NaN, NaN, 1, 0.3, 0.01, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==12))
    error('Parameter eta has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 12, 0.6, NaN, NaN, 1, 0.5, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==13))
    error('Parameter gamma has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 13, 0.8, NaN, NaN, 1, 0.6, 0.15, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==15))
    error('Parameter kappa has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 15, 6, NaN, NaN, 2, 4, 1.5, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==26))
    error('Parameter xi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 26, 106, 0, NaN, 2, 100, 15, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==16))
    error('Parameter rho has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 16, .45, NaN, NaN, 1, .75, 0.1, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==18))
    error('Parameter phi_pi has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 18, 1.8, NaN, NaN, 2, 1.5, 0.25, NaN, NaN, NaN ];
if ~isempty(find(estim_params_.param_vals(:,1)==17))
    error('Parameter phi_y has been specified twice in two concatenated ''estimated_params'' blocks. Depending on your intention, you may want to use the ''overwrite'' option or an ''estimated_params_remove'' block.')
end
estim_params_.param_vals = [estim_params_.param_vals; 17, 0.05, NaN, NaN, 2, 0.1, 0.05, NaN, NaN, NaN ];
options_.datafile = 'myobs';
options_.first_obs = 1;
options_.forecast = 8;
options_.lik_init = 2;
options_.mh_jscale = 0.5;
options_.mh_nblck = 1;
options_.mh_replic = 5000;
options_.mode_compute = 4;
options_.prefilter = 1;
options_.order = 1;
var_list_ = {'gy_obs';'pi_obs';'r_obs';'gc_obs';'gi_obs';'pe_obs';'u_obs'};
oo_recursive_=dynare_estimation(var_list_);
fn = fieldnames(oo_.posterior_mean.parameters);
for ix = 1:size(fn,1)
set_param_value(fn{ix},eval(['oo_.posterior_mean.parameters.' fn{ix} ]))
end
fx = fieldnames(oo_.posterior_mean.shocks_std);
for ix = 1:size(fx,1)
idx = strmatch(fx{ix},M_.exo_names,'exact');
M_.Sigma_e(idx,idx) = eval(['oo_.posterior_mean.shocks_std.' fx{ix}])^2;
end
options_.conditional_variance_decomposition = [1;4;10;100;];
options_.irf = 30;
options_.order = 1;
var_list_ = {'gy_obs';'pi_obs';'r_obs'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
load(options_.datafile);
if exist('T') ==1
Tvec = T;
else
Tvec = 1:size(dataset_,1);
end
Tfreq = mean(diff(Tvec));
tprior = 20; 
Tvec2 = Tvec(end) + (0:(options_.forecast))*Tfreq;
for i1 = 1 :size(dataset_.name,1)
idv		= strmatch(dataset_.name{i1},M_.endo_names,'exact');
idd		= strmatch(dataset_.name{i1},dataset_.name,'exact');
if ~isempty(idd) && isfield(oo_.MeanForecast.Mean, dataset_.name{i1})
yobs   = eval(['oo_.SmoothedVariables.' dataset_.name{i1}])+dataset_info.descriptive.mean(idd);
yfc    = eval(['oo_.MeanForecast.Mean.'  dataset_.name{i1}])+dataset_info.descriptive.mean(idd);
yfcVar = sqrt(eval(['oo_.MeanForecast.Var.' dataset_.name{i1}]));
figure;
plot(Tvec(end-tprior+1:end),yobs(end-tprior+1:end))
hold on;
plot(Tvec2,[yobs(end) yfc'] ,'r--','LineWidth',1.5);
plot(Tvec2,[yobs(end) (yfc+1.96*yfcVar)'],'r:','LineWidth',1.5)
plot(Tvec2,[yobs(end) (yfc-1.96*yfcVar)'],'r:','LineWidth',1.5)
grid on;
xlim([Tvec(end-tprior+1) Tvec2(end)])
legend('Sample','Forecasting','Uncertainty')
title(['forecasting of ' M_.endo_names_tex{idv}])
hold off;
else
warning([ dataset_.name{i1} ' is not an observable or you have not computed its forecast'])
end
end


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'unemployment_NK_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
