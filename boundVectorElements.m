function normalizedArray = boundVectorElements(vector, upperBound, lowerBound)
	for i = 1:length(vector)
		if (vector(i) > upperBound)
			vector(i) = upperBound;
        end
		if (vector(i) < lowerBound)
			vector(i) = lowerBound;
        end
	end
	normalizedArray = vector;
end 