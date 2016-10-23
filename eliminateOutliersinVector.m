function normalizedArray = eliminateOutliersinVector(vector, upperBound, lowerBound)
	for i = 1:length(vector)
		if vector(i) > upperBound
			vector(i) = 0;
        end
		if vector(i) < lowerBound
			vector(i) = 0;
        end
	end
	normalizedArray = vector;
end 