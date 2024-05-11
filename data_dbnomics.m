%% Load data

% Dbnomics: Output, Consumption, Investment, Deflator, Unemployment, Nominal Rate
[dbnomics,~,T] = call_dbnomics('OECD/QNA/FRA.B1_GE.CQRSA.Q','OECD/QNA/FRA.P31DC.CQRSA.Q','OECD/QNA/FRA.P51.CQRSA.Q','OECD/QNA/FRA.B1_GE.DNBSA.Q','OECD/MEI/FRA.LRUN64TT.STSA.Q','OECD/KEI/IR3TIB01.FRA.ST.Q');

% ETS carbon price
ETSprice_month = readtable('Data_Estimation_2009-2019.xlsx',sheet='Feuil1',Range="A1:E128");
ETSprice_month = ETSprice_month(:,[1,5]); %keep only pe_obs series


%% Transform data ETS price

% Convertir la colonne date en trimestriel
ETS_quarters = datetime(year(ETSprice_month{:,1}), (quarter(ETSprice_month{:,1})-1)*3+1, 1);

% Calculer la moyenne trimestrielle du prix ETS que l'on a en mensuel
mean_pe_obs = splitapply(@mean, ETSprice_month{:, 2}, findgroups(ETS_quarters));

% Créer la base de données avec le trimestre et l'année et la moyenne trimestrielle
ETSprice_quart = table(unique(ETS_quarters), mean_pe_obs, 'VariableNames', {'date', 'pe_obs'});



%% Restrict period dbnomics data

% Convert the first column of dbnomics into MATLAB datetime objects
dbnomics_quarters = datetime(dbnomics(:, 1), 'ConvertFrom', 'datenum');

% Keep the dates for which we have ETS price
idx = find(ismember(dbnomics_quarters, ETSprice_quart.date));
dbnomics = dbnomics(idx,:);
T = T(idx);

% we normalize to one prices and in population for 2015
id2015 = find(T==2015);
def = dbnomics(:,5)/dbnomics(id2015,5);


%% First check for stationarity (visually) --> non stationary

gy_obs  = dbnomics(:,2)./(def);
gc_obs  = dbnomics(:,3)./(def);
gi_obs  = dbnomics(:,4)./(def);
u_obs	= dbnomics(:,6);
r_obs	= dbnomics(:,7)/400;

figure;
subplot(2,3,1)
plot(T,gy_obs)
xlim([min(T) max(T)]);
title('output growth')
subplot(2,3,2)
plot(T,gc_obs)
xlim([min(T) max(T)]);
title('consumption growth')
subplot(2,3,3)
plot(T,gi_obs)
xlim([min(T) max(T)]);
title('investment growth')
subplot(2,3,4)
plot(T,u_obs)
xlim([min(T) max(T)]);
title('unemployment rate')
subplot(2,3,5)
plot(T,def)
xlim([min(T) max(T)]);
title('inflation index')
subplot(2,3,6)
plot(T,r_obs)
xlim([min(T) max(T)]);
title('nominal rate')



%% Transform dbnomics data --> impose stationarity

% taking in real growth rates per capita: output, consumption and inflation
gy_obs  = diff(log(dbnomics(:,2)./(def)));
gc_obs  = diff(log(dbnomics(:,3)./(def)));
gi_obs  = diff(log(dbnomics(:,4)./(def)));

% unemployment rate
u_obs	= dbnomics(2:end,6);

% inflation rate
pi_obs  = diff(log(def));

% ETS price: normalise to the 2015 ETS price and taking growth rate
pe_obs = table2array(ETSprice_quart(:,2));
pe_obs = pe_obs/pe_obs(id2015,1);
pe_obs  = diff(log(pe_obs));

% quarterly interest rate
r_obs	= dbnomics(2:end,7)/400;

% date
T = T(2:end);



%% Figures

figure;
subplot(2,2,1)
plot(T,gy_obs)
xlim([min(T) max(T)]);
title('output growth')
subplot(2,2,2)
plot(T,gc_obs)
xlim([min(T) max(T)]);
title('consumption growth')
subplot(2,2,3)
plot(T,gi_obs)
xlim([min(T) max(T)]);
title('investment growth')
subplot(2,2,4)
plot(T,u_obs)
xlim([min(T) max(T)]);
title('unemployment rate')

figure;
subplot(2,2,1)
plot(T,gy_obs)
xlim([min(T) max(T)]);
title('output growth')
subplot(2,2,2)
plot(T,pi_obs)
xlim([min(T) max(T)]);
title('inflation rate')
subplot(2,2,3)
plot(T,r_obs)
xlim([min(T) max(T)]);
title('nominal rate')
subplot(2,2,4)
plot(T,pe_obs)
xlim([min(T) max(T)]);
title('prix ETS')



%% Stationarity tests
%  We run the Kwiatkowski, Phillips, Schmidt, and Shin (KPSS) test to check
%  for stationarity 

h_gy = kpsstest(gy_obs) ;
h_gc = kpsstest(gc_obs) ;
h_gi = kpsstest(gi_obs) ;
h_pi = kpsstest(pi_obs) ;
h_pe = kpsstest(pe_obs) ;

% All variables are stationary except for investment. For this variable, we
% perform an ADF test

h_gi_adf = adftest(gi_obs);
% We can reject the null hypothesis of a unit root against the autoregressive alternative.




%% Save into myobs.mat
save myobs gy_obs gc_obs gi_obs u_obs pe_obs T pi_obs r_obs;