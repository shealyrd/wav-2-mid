function trainingStruct = createTrainingStructFromPair(pair)
	 switch pair(1)
		case 12
			filename1 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello', '\', num2str(pair(2)), '.wav');
			filename2 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\piano', '\', num2str(pair(3)), '.wav');
		case 13
			filename1 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello', '\', num2str(pair(2)), '.wav');
			filename2 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\trumpet', '\', num2str(pair(3)), '.wav');
		case 23
			filename1 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\piano', '\', num2str(pair(2)), '.wav');
			filename2 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\trumpet', '\', num2str(pair(3)), '.wav');
		otherwise
			disp('Error');
     end
    disp(filename2);
	songSet = loadSongSet(filename1, filename2);
	id = strcat(num2str(pair(1)), '-', num2str(pair(2)), '-', num2str(pair(3)));
	trainingStruct = createTrainingDataStructure(songSet, filename1, filename2, id);
end