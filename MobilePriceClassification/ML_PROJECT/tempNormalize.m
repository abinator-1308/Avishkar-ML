
%% Load Data
data = load('temp.csv');
X = data(:, 1:2:3:4:5:6:7:8:9:10:11:12:13:14:15:16:17:18:19:20);
fprintf('Normalizing Features ...\n');
[m,n]=size(X);
[X, mu, sigma] = featureNormalize(X);
fprintf('First 10 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f %.0f]\n', [X(1:10,:)]');
% Add intercept term to X
X = [ones(m, 1) X];
