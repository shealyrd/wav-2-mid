function trainingStruct = createTrainingDataStructure(songSet, source1Name, source2Name, id)
		field1 = 'source1';
		field2 = 'source2';
		field3 = 'mixture';
		field4 = 'source1Mask';
		field5 = 'source2Mask';
        field6 = 'id';
        field7 = 'source1Name';
        field8 = 'source2Name';
		masks = createBinaryMaskPair(songSet);
		trainingStruct = struct(field1, {songSet.source1}, field2, {songSet.source2}, field3, {songSet.mixture}, field4, {masks.source1Mask}, field5, {masks.source2Mask}, field6, {id}, field7, {source1Name}, field8, {source2Name});
end