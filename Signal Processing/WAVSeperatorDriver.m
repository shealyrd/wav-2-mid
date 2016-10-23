function WAVSeperatorDriver(directory, interval)
	cd(directory)	
	files = dir('*.wav');
	for i = 1:length(files)
        file = files(i);
        wav = wavread(file.name);
        tempFilename = [file.name '_'];
        seperateWAVIntoIntervals(wav, interval, tempFilename);
	end
end

