function regression_error = eval_network(input, weights, target_output)

[outputs, net] = feedforward(input, weights, 1);

[rows, output_count] = size(weights);

regression_error = sum(sum((outputs - target_output) .^2));
end