function pair = generatePair(combinations, maxes)
	pair = zeros(1, 3);
	combinationsIndex = randi([1 length(combinations)]);
	pair(1) = str2num(strcat(num2str(combinations(combinationsIndex, 1)), num2str(combinations(combinationsIndex, 2))));
	pair(2) = randi([1 maxes(combinations(combinationsIndex, 1))]);
	pair(3) = randi([1 maxes(combinations(combinationsIndex, 2))]);
end
