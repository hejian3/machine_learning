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

fprintf('X row = %f col = %f X(1,1)=%f\n',size(X,1),size(X,2),X(1,1));
fprintf('Theta1 row = %f col = %f Theta1(1,1)=%f\n',size(Theta1,1),size(Theta1,2),Theta1(1,1));
fprintf('Theta2 row = %f col = %f Theta2(1,1)=%f\n',size(Theta2,1),size(Theta2,2),Theta2(1,1));
% Add ones to the X data matrix
X = [ones(m, 1) X];

a2 = sigmoid(X * Theta1');
fprintf('a2 row = %f col = %f a2(1,1)=%f\n',size(a2,1),size(a2,2),a2(1,1));

% Add ones to the a2 data matrix
a2 = [ones(m, 1) a2];

a3 = sigmoid(a2 * Theta2');
fprintf('a3 row = %f col = %f a3(1,1)=%f\n',size(a3,1),size(a3,2),a3(1,1));

for i = 1 : size(a3,1)
    [a, index] = max(a3(i,:));
    p(i) = index;
end;








% =========================================================================


end
