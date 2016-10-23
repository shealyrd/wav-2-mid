function weights=initialise_weights(max_weight, row_count, col_count)

weights = (2*rand(row_count, col_count)-1) * max_weight;
