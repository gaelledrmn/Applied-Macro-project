%% Load data

% Dbnomics: Output, Consumption, Investment, Deflator, Unemployment, Nominal Rate
[dbnomics,~,T] = call_dbnomics('OECD/QNA/FRA.B1_GE.CQRSA.Q','OECD/QNA/FRA.P31DC.CQRSA.Q','OECD/QNA/FRA.P51.CQRSA.Q','OECD/QNA/FRA.B1_GE.DNBSA.Q','OECD/MEI/FRA.LRUN64TT.STSA.Q','OECD/KEI/IR3TIB01.FRA.ST.Q');

% ETS carbon price
ETSprice_month = readtable('Data_Estimation_2009-2019.xlsx',sheet='Feuil1',Range="A1:E128");
ETSprice_month = ETSprice_month(:,[1,5]);


%% Transform data ETS price

% Convertir la colonne date en trimestriel
ETS_quarters = datetime(year(ETSprice_month{:,1}), (quarter(ETSprice_month{:,1})-1)*3+1, 1);

% Calculer la moyenne trimestrielle du prix ETS
mean_pe_obs = splitapply(@mean, ETSprice_month{:, 2}, findgroups(ETS_quarters));

% Créer la base de données avec le trimestre et l'année et la moyenne trimestrielle
ETSprice_quart = table(unique(ETS_quarters), mean_pe_obs, 'VariableNames', {'date', 'pe_obs'});

% Ajouter le trimestre précédent pour le calcul des lag dans dbnomics
new_row = table(dateshift(ETSprice_quart.date(1), 'start', 'quarter', -1), NaN, 'VariableNames', {'date', 'pe_obs'});
ETSprice_quart = [new_row; ETSprice_quart];


%% Transform dbnomics data

% Convertir la première colonne de dbnomics en objets datetime MATLAB
dbnomics_quarters = datetime(dbnomics(:, 1), 'ConvertFrom', 'datenum');

% Garde les dates pour lesquelles on a le prix ETS
idx = find(ismember(dbnomics_quarters, ETSprice_quart.date));
dbnomics = dbnomics(idx,:);
T = T(idx);

% we normalize to one prices and in population for 2015
id2015 = find(T==2015);
def = dbnomics(:,5)/dbnomics(id2015,5);

% taking in real growth rates per capita
gy_obs  = diff(log(dbnomics(:,2)./(def)));
gc_obs  = diff(log(dbnomics(:,3)./(def)));
gi_obs  = diff(log(dbnomics(:,4)./(def)));

% unemployment rate : j'ai rien changé
u_obs	= dbnomics(2:end,6);

% inflation rate
pi_obs  = diff(log(def));

% quarterly interest rate
r_obs	= dbnomics(2:end,7)/400;

% prix ETS
pe_obs = table2array(ETSprice_quart(2:end,2));

% date
T = T(2:end);


%% Save into myobs.mat
save myobs gy_obs gc_obs gi_obs u_obs pe_obs T pi_obs r_obs;


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
subplot(1,3,1)
plot(T,gy_obs)
xlim([min(T) max(T)]);
title('output growth')
subplot(1,3,2)
plot(T,pi_obs)
xlim([min(T) max(T)]);
title('inflation rate')
subplot(1,3,3)
plot(T,r_obs)
xlim([min(T) max(T)]);
title('nominal rate')

figure;
plot(T,pe_obs)
xlim([min(T) max(T)]);
title('prix ETS')



