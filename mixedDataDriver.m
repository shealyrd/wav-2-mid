function mixedDataDriver()
    warning('off', 'MATLAB:audiovideo:wavwrite:functionToBeRemoved');
	field1 = 'firstIndex';
	field2 = 'secondIndex';
	field4 = 'thirdIndex';
	field3 = 'signal';
	
%{
    for i = 1:75
		tempFilename1 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello\5 seconds\', num2str(i), '.wav');
		song1 = wavread(tempFilename1);
		for j = 1:75
			tempFilename2 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\piano\5 seconds\', num2str(j), '.wav');
			song2 = wavread(tempFilename2);
			song3 = song1 + song2;
			structFilename = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello+piano\', num2str(i), '_', num2str(j), '.wav');
			wavwrite(song3, 48000, 16, structFilename);
			disp(structFilename);
		end
	end
	for i = 1:75
		tempFilename1 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\piano\5 seconds\', num2str(i), '.wav');
		song1 = wavread(tempFilename1);
		for j = 1:75
			tempFilename2 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\trumpet\5 seconds\', num2str(j), '.wav');
			song2 = wavread(tempFilename2);
			song3 = song1 + song2;
			structFilename = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\piano+trumpet\', num2str(i), '_', num2str(j), '.wav');
			wavwrite(song3, 48000, 16, structFilename);
			disp(structFilename);
		end
	end
	for i = 1:75
		tempFilename1 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello\5 seconds\', num2str(i), '.wav');
		song1 = wavread(tempFilename1);
		for j = 1:75
			tempFilename2 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\trumpet\5 seconds\', num2str(j), '.wav');
			song2 = wavread(tempFilename2);
			song3 = song1 + song2;
			structFilename = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello+trumpet\', num2str(i), '_', num2str(j), '.wav');
			wavwrite(song3, 48000, 16, structFilename);
			disp(structFilename);
		end
	end
%}

	for i = 1:17
		tempFilename1 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello\5 seconds\', num2str(i), '.wav');
		song1 = wavread(tempFilename1);
		for j = 1:17
			tempFilename2 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\piano\5 seconds\', num2str(j), '.wav');
			song2 = wavread(tempFilename2);
			song3 = song1 + song2;
			for k = 1:17
				tempFilename3 = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\trumpet\5 seconds\', num2str(k), '.wav');
				song4 = wavread(tempFilename3);
				song5 = song4 + song3;
				structFilename = strcat('C:\Users\Evan\Desktop\Senior Project\UsableWavs\cello+piano+trumpet\', num2str(i), '_', num2str(j), '_', num2str(k), '.wav');
				wavwrite(song5, 48000, 16, structFilename);
				disp(structFilename);
			end
		end
	end

end
	