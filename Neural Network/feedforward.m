function [outputs, net] = feedforward(inputs, weights, bias)

net = [inputs, bias] * weights;
outputs = activate(net);
