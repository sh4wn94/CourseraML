function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

X = [ones(size(X, 1), 1), X]; % add 1's as first column

% input layer
a1 = X'; % one set of inputs per column

% hidden layer
z2 = Theta1 * a1; 
a2 = sigmoid(z2)'; % output vector of second layer
a2 = [ones(size(a2, 1), 1), a2];
a2 = a2'; % one set of inputs per column

% output layer
z3 = Theta2 * a2;
a3 = sigmoid(z3)';
h = a3;

% determine result
[~, p] = max(h, [], 2);

% =========================================================================


end
