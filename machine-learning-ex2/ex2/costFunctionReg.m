function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
grad2 = zeros(size(theta));
temp = grad(1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


z = X*theta;
sh = sigmoid(z); %sh is h(x), and is a 100*1 vector
J = -1/m * (y' * log(sh) + (1-y)'* log(1-sh)) + lambda/(2*m)*sum(theta(2:end).^2);

grad = ((1/m)*((sh-y)' * X))' + lambda/m*theta;

grad2 = grad2-(grad2 - ((1/m)*((sh-y)' * X))');
grad(1)=grad2(1);





% =============================================================

end
