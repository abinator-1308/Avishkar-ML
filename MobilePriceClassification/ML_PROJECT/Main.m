clear ; close all; clc;
%% Load Data
data = load('train.csv');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
%Z= data(:,14);
plot(X, y, 'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
theta = normalEqn(X, y);
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');
data = csvread('test.csv');
ans=data*theta;
ans2=uint8(ans);
csvwrite('answer1.csv',ans2);
