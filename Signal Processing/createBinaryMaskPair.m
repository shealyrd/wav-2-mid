function binaryMasks = createBinaryMaskPair(songSet)
	mask1 = createBinaryMask(songSet.source1, songSet.mixture);
	mask2 = createBinaryMask(songSet.source2, songSet.mixture);
	field1 = 'source1Mask';
	field2 = 'source2Mask';
	binaryMasks = struct(field1, {mask1}, field2, {mask2});
end