function instantiateTrainingDataFromPairs(pairs, directory)
	for i = 1:length(pairs)
		tempPair = pairs(i, :);
		trainingStruct = createTrainingStructFromPair(tempPair);
		tempFilename = strcat(directory, '\', trainingStruct.id);
		save(tempFilename, 'trainingStruct');
        disp(strcat('Iteration ', ' ', num2str(i), ' complete.'));
	end
end