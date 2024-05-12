% Toy model of unemployment
% gauthier@vermandel.fr

%----------------------------------------------------------------
% 0. Housekeeping (close all graphic windows)
%----------------------------------------------------------------

close all;

%----------------------------------------------------------------
% 1. Defining variables
%----------------------------------------------------------------

var rr c n u w y k i lb mc pi r q x v_H v_P e mu g tau gy_obs gc_obs gi_obs pi_obs r_obs u_obs pe_obs varrho
    lny lni lnc lnpi lnr;
var e_a e_g e_c e_m e_i e_r e_t;


varexo eta_a eta_g eta_c eta_m eta_i eta_r eta_t;
 
parameters beta delta alpha sigmaC sigmaL delta_N chi phi gy b  Gam eta gamma epsilon kappa rho phi_y phi_pi
			tau0 y0 sig theta1 theta2 varphi A xi piss rho_a rho_g rho_c rho_m rho_i rho_r rho_t;
            
            
%----------------------------------------------------------------
% 2. Calibration
%----------------------------------------------------------------
delta_N = .017;		% separation rate
eta		= .5;		% negotiation share
phi		= 0.05;		% shape hiring cost function
beta 	= 0.99; 	% Discount factor firms
delta 	= 0.025;	% Depreciation rate
alpha 	= 0.35;		% Capital share
gy 		= 0.55;   	% Public spending in GDP
sigmaC 	= 1;		% Consumption risk aversion
sigmaL 	= 1; 		% Elasticity of labor
epsilon = 7;		% Elasticity between goods
rho 	= 0.8;		% Monetary policy smoothing
phi_y	= 0.025;		% Monetary policy reaction to output
phi_pi	= 1.5;		% Monetary policy reaction to inflation
xi 		= 80;		% Adjustment costs on prices
kappa	= 4;		% adjustment costs on investment
gamma	= .85;		% unemployment insurance as % of real wage
varphi	= 0.2;		% elasticity of emission to GDP
piss	= 1.0086;	% steady state inflation

% value of main variables:
tau0 	= 50/1000 ;	% value of carbon tax
sig		= 0.25; 	% Carbon intensity 0.25 Gt / Trillions USD
y0	 	= 2.6;		% trillions usd PPA 
theta1  = 0.05;		% level of abatement costs
theta2  = 2.6;		% curvature abatement cost
Hss		= 1/3;		% labor supply in ss

% autoregressive roots parameters
rho_a	= 0.95;
rho_g	= 0.95;
rho_c	= 0.95;
rho_m  	= 0.95;
rho_i	= 0.95;
rho_r	= 0.40;
rho_t	= 0.40;

%----------------------------------------------------------------
% 3. Model
%----------------------------------------------------------------

model; 
	%% Household
	[name='marginal utility of consumption']
	lb = e_c*c^-sigmaC;
	[name='Euler']
	beta*lb(+1)/lb*rr = 1;
	[name='Labor Supply']
	v_H = w - b - chi/lb + beta*(1-delta_N)*v_H(+1);
	[name='Employment law of motion']
	n = (1-delta_N)*n(-1) + x*u;

	%% Production
	[name='technology']
	y = A*e_a*(k(-1)^alpha)*(n^(1-alpha));
	[name='Capital law of motion']
	i*e_i*(1-(kappa/2)*(i/i(-1)-1)^2) = k-(1-delta)*k(-1);
	[name='FOC k']
	((1-delta)*q(+1)+alpha*varrho(+1)*y(+1)/k) = q*rr;
	[name='FOC i']
 	e_i*q = 1 + e_i*q*(kappa/2)*( 1 + ( 3*i/i(-1)-4 )*i/i(-1) )
			+ beta*lb(+1)/lb*e_i(+1)*q(+1)*kappa*(1-i(+1)/i)*(i(+1)/i)^2;
	[name='FOC n']
	v_P = (1-alpha)*varrho*y/n - w + beta*lb(+1)/lb*(1-delta_N)*v_P(+1);
	[name='FOC x']
	Gam*x^phi = v_P;
	[name='NKPC']
	(1-epsilon) + epsilon*mc - xi*pi*(pi-steady_state(pi)) + xi*beta*lb(+1)/lb*y(+1)/y*pi(+1)*(pi(+1)-steady_state(pi));
	[name='wage']
	(1-e_m*eta)*v_H = e_m*eta*v_P;
	[name='FOC y']
	varrho = mc - theta1*mu^theta2 - tau*(1-varphi)*sig*(1-mu)*y^-varphi;
	[name='FOC mu']
	((tau*sig*y^(1-varphi))/(theta2*theta1))^(1/(theta2-1)) = mu;
	
	
	%% AGGREGATION
	[name='Resources Constraint']
	y = c + i + g  + xi/2*(pi-steady_state(pi))^2*y + Gam/(1+phi)*x^(1+phi)*u;
	[name='Unemployment rate']
	u = 1-n;	
	[name='Fisherian equation']
	rr = r/pi(+1);
	[name='Total emissions']
	e = sig*(1-mu)*y^(1-varphi);
	
	%%% Policy instruments
	[name='Monetary Policy rule']
	r = r(-1)^rho * (steady_state(r)*(pi/steady_state(pi))^phi_pi*(y/steady_state(y))^phi_y)^(1-rho) * e_r;
	[name='Public spending']
	g = gy*steady_state(y)*e_g;
	[name='Carbon tax']
	tau = tau0*e_t;
		
	%% Observable variables 
	[name='measurement GDP']
	gy_obs = log(y/y(-1));
	[name='measurement consumption']
	gc_obs = log(c/c(-1));
	[name='measurement investment']
	gi_obs = log(i/i(-1));
	[name='measurement inflation']
	pi_obs = pi - steady_state(pi);
	[name='measurement interest rate']
	r_obs  = r  - steady_state(r);
	[name='measurement unemployment']
	u_obs  = u  - steady_state(u);
    [name='measurement carbon tax']
    pe_obs = tau - steady_state(tau);

    [name='Output gap']
	lny = log(y/steady_state(y));
	[name='Consumption gap']
	lnc = log(c/steady_state(c));
	[name='Investment gap']
	lni = log(i/steady_state(i));
	[name='Inflation gap']
	lnpi = log(pi/steady_state(pi));
	[name='Investment gap']
	lnr = log(r/steady_state(r));
   
	
	[name='shocks']
	log(e_a) = rho_a*log(e_a(-1))+eta_a;
	log(e_g) = rho_g*log(e_g(-1))+eta_g;
	log(e_c) = rho_c*log(e_c(-1))+eta_c;
	log(e_i) = rho_i*log(e_i(-1))+eta_i;
    log(e_m) = rho_m*log(e_m(-1))+eta_m;
    log(e_r) = rho_r*log(e_r(-1))+eta_r;  
    log(e_t) = rho_t*log(e_t(-1))+eta_t;  
end;

    
%----------------------------------------------------------------
% 4. Computation
%----------------------------------------------------------------
steady_state_model;
	pi		= piss;
	rr		= 1/beta;
	r		= rr*pi;
	tau 	= tau0;
	y		= y0;
	mu		= (tau*sig*y^(1-varphi)/(theta2*theta1))^(1/(theta2-1));
	mc		= (epsilon-1)/epsilon;
	varrho 	= mc - theta1*mu^theta2 - tau*(1-varphi)*sig*(1-mu)*y^(-varphi);
	q		= 1;
	u 		= .075;
	n 		= 1-u;
%	k		= n*(A*(rr-(1-delta))/(alpha*varrho))^(1/(alpha-1));
	k		=	alpha*varrho*y/(rr-(1-delta));

	A		= y/(k^alpha*n^(1-alpha));
	i		= delta*k;
	x 		= delta_N*n/u;	
	Gam 	= 0.01*y / (x^(1+phi)*u/(1+phi));
	v_P 	= Gam*x^phi;
	v_H 	= eta/(1-eta)*v_P;
	w 		= (1-alpha)*varrho*y/n - v_P  + beta*((1-delta_N-0*x)*v_P+0*phi/2*x^2);
	c  		= (1-gy)*y-i-Gam/(1+phi)*x^(1+phi)*u;
	lb 		= c^-sigmaC;
	chi 	= ((1-gamma)*w - v_H*(1-beta*(1-delta_N-0*x)))*lb;
	g 		= gy*y;
	b		= gamma*w;
	e 		= sig*(1-mu)*y^(1-varphi);
	e_a 	= 1;
	e_g 	= 1;
	e_c 	= 1;
	e_m 	= 1;
	e_i 	= 1;
	e_r 	= 1;
	e_t 	= 1;
	gy_obs = 0; gc_obs = 0; gi_obs = 0; pi_obs = 0; r_obs = 0; u_obs = 0; pe_obs = 0; 
    lny = 0; lnc = 0; lni = 0; lnpi = 0; lnr = 0; 
end;
	
resid;
check;


varobs gy_obs gc_obs pe_obs r_obs gi_obs ; %u_obs pi_obs

estimated_params;
//	PARAM NAME,		INITVAL,	LB,		UB,		PRIOR_SHAPE,		PRIOR_P1,		PRIOR_P2,		PRIOR_P3,		PRIOR_P4,		JSCALE
	stderr eta_g,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_g,				.92,    	,		,		beta_pdf,			.5,				0.2;
	stderr eta_c,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_c,				.96,    	,		,		beta_pdf,			.5,				0.2;
	stderr eta_t,       ,           ,       ,       INV_GAMMA_PDF,      .01,            2;
    rho_t,              .5,         ,       ,       beta_pdf,           .5,             0.2;
    %stderr eta_a,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	%rho_a,				.9,     	,		,		beta_pdf,			.5,				0.2;
	%stderr eta_m,   	,			,		,		INV_GAMMA_PDF,		.01,			0.2;
	%rho_m,				.9,    		,		,		beta_pdf,			.5,				0.2;
	stderr eta_r,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_r,				.5,    		,		,		beta_pdf,			.5,				0.2;
	stderr eta_i,   	,			,		,		INV_GAMMA_PDF,		.01,			2;
	rho_i,				.9,    		,		,		beta_pdf,			.5,				0.2;

	sigmaC,				2,    		,		,		normal_pdf,			1.5,			.35;
	sigmaL,				0.8,   	 	,		,		gamma_pdf,			2,				0.5;
    delta_N,            ,           ,       ,       beta_pdf,           0.1,            0.01;
    eta,                0.6,        ,       ,       beta_pdf,           0.5,            0.1;
    gamma,              0.8,        ,       ,       beta_pdf,           0.6,            0.15;
	kappa,				6,    		,		,		gamma_pdf,			4,				1.5;
	xi,					106,    	0,		,		gamma_pdf,			100,			15;
	rho,				.45,    	,		,		beta_pdf,			.75,			0.1;
	phi_pi,				1.8,    	,		,		gamma_pdf,			1.5,			0.25;
	phi_y,				0.05,    	,		,		gamma_pdf,			0.1,			0.05;
	
end;


%%% estimation of the model
estimation(datafile=myobs,	% your datafile, must be in your current folder
first_obs=1,				% First data of the sample
mode_compute=4,				% optimization algo, keep it to 4
mh_replic=5000,				% number of sample in Metropolis-Hastings
mh_jscale=0.5,				% acceptance rate is between 0.2 and 0.3
prefilter=1,				% remove the mean in the data
lik_init=2,					% Don't touch this,
mh_nblocks=1,				% number of mcmc chains
forecast=8					% forecasts horizon
) gy_obs gc_obs r_obs gi_obs pe_obs; %u_obs pi_obs


% load estimated parameters
fn = fieldnames(oo_.posterior_mean.parameters);
for ix = 1:size(fn,1)
	set_param_value(fn{ix},eval(['oo_.posterior_mean.parameters.' fn{ix} ]))
end
% load estimated shocks
fx = fieldnames(oo_.posterior_mean.shocks_std);
for ix = 1:size(fx,1)
	idx = strmatch(fx{ix},M_.exo_names,'exact');
	M_.Sigma_e(idx,idx) = eval(['oo_.posterior_mean.shocks_std.' fx{ix}])^2;
end

stoch_simul(irf=30,conditional_variance_decomposition=[1,4,10,20],order=1) gy_obs pi_obs u_obs;



shock_decomposition lny pi_obs u_obs ;

load(options_.datafile);
if exist('T') ==1
	Tvec = T;
else
	Tvec = 1:size(dataset_,1);
end
Tfreq = mean(diff(Tvec));

%%%%%%%%%%%%%%%%% END OF SAMPLE FORECASTING - PLOTS
tprior = 20; % period before forecasts to plot
Tvec2 = Tvec(end) + (0:(options_.forecast))*Tfreq;
for i1 = 1 :size(dataset_.name,1)
	idv		= strmatch(dataset_.name{i1},M_.endo_names,'exact');
	idd		= strmatch(dataset_.name{i1},dataset_.name,'exact');
	if ~isempty(idd) && isfield(oo_.MeanForecast.Mean, dataset_.name{i1})
		% Draw 
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


%%%%%%%%%%%%%%%%% FORECAST UNDER ALTERNATIVE POLICY %%%%%%%%%%%%%%%%%%
Thorizon 	= 12; % number of quarters for simulation
% Built baseline forecast
fx = fieldnames(oo_.SmoothedShocks);
for ix=1:size(fx,1)
	shock_mat = eval(['oo_.SmoothedShocks.' fx{ix}]);
	if ix==1; ee_mat2 = zeros(length(shock_mat),M_.exo_nbr); end;
	ee_mat2(:,strmatch(fx{ix},M_.exo_names,'exact')) = shock_mat;
end
% add mean-wise forecast with zero mean shocks
ee_mat2 	= [ee_mat2;zeros(Thorizon,M_.exo_nbr)];
Tvec2 		= Tvec(1):Tfreq:(Tvec(1)+size(ee_mat2,1)*Tfreq);

%%% Simulate baseline scenario
% solve decision rule
[oo_.dr, info, M_.params] = resol(0, M_, options_, oo_.dr, oo_.dr.ys, oo_.exo_steady_state, oo_.exo_det_steady_state);
% simulate the model
y_            = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_mat2,options_.order);

%%% Add a positive carbon shock
% make a copy of shock matrix
ee_matx = ee_mat2;
% select fiscal shock
idx = strmatch('eta_t',M_.exo_names,'exact');
ee_matx(end-Thorizon+1,idx) = 0.7;% add a 70 percent increase in carbon price 
% simulate the model
y_carbon           = simult_(M_,options_,oo_.dr.ys,oo_.dr,ee_matx,options_.order);


% draw result
var_names={'lny','lnc','lnpi','u_obs','tau'};
Ty = [T(1)-Tfreq;T];
draw_tables(var_names,M_,Tvec2,[2023 Tvec2(end)],y_,y_carbon)
legend('Estimated','Carbon')

