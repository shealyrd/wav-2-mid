function weights=update_backpropagation(inputs, weights, bias, eta, target_output)

[sample_count cols] = size(inputs);

sample_index = randint(1, 1, sample_count) + 1;

[output, net] = feedforward(inputs(sample_index,:), weights, bias(sample_index));
error = target_outputs(sample_index,:) - output;
delta = error .* activate_derivative(net);
weights_delta = eta*kron([inputs(sample_index,:), bias(sample_index)]', delta);
weights = weights + weights_delta;
