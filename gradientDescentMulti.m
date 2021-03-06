function [theta] = gradientDescentMulti(X, y, theta, alpha, number_of_iterations)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha
% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(number_of_iterations, 1);
    for iteration = 1:number_of_iterations
        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta. 
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCostMulti) and gradient here.
        %
        %size(theta);
        %size(X);
        h = X*theta;        
        error_vector = h-y;        
        gradient = (alpha/m)*(X')*error_vector;
        %size(gradient)
        theta = theta - gradient;
        % ============================================================
        % Save the cost J in every iteration
        J_history(iteration) = computeCostMulti(X, y, theta);
%         if(J_history(iteration)<0.01)
%             break;
%         end
    end
end