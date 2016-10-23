function arrayResult = truncateArray(arrayInput, sizeInput)
	difference = size(arrayInput) - sizeInput;
	arrayResult = arrayInput(1:end - difference);
end