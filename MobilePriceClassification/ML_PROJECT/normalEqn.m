function [theta] = normalEqn(X, y)
theta = zeros(size(X, 20), 1);
theta = pinv(X' * X) * X' * y;
end