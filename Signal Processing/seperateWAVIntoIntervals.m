function seperateWAVIntoIntervals(song, seconds, filename)
    warning('off', 'MATLAB:audiovideo:wavread:functionToBeRemoved');
    fs = 48000;
 	songLength = length(song)/fs;
	numberOfIterations = floor(songLength)/seconds;
	x = 1;
	for i = 1:numberOfIterations
		tempFilename = [filename num2str(i) '.wav'];
		offset = x+seconds*fs-1;
		tempSong = song(x:offset, :);
		wavwrite(tempSong, fs, 16, tempFilename);
		x = offset + 1;
    end
end
