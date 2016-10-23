function pairs = generateRandomPairs(combinations, maxes, numberOfPairs, pairs)
    numberOfUniques = 0;
    result = pairs;
    while numberOfUniques < numberOfPairs
        tempPair = generatePair(combinations, maxes);
        result = vertcat(result, tempPair);
        uniquePairs = unique(result, 'rows');
        [numberOfUniques, ~] = size(uniquePairs);
    end
    pairs = result;
end