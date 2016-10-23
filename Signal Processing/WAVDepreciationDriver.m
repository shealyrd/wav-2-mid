function WAVDepreciationDriver(directory, interval)
	cd(directory)	
	files = dir('*.wav');
	for i = 1:length(files)
        file = files(i);
        wav = wavread(file.name);
        downSampledWAV = resample(wav, 1, 6);
        tempFilename = [file.name '_down'];
        seperateWAVIntoIntervals(downSampledWAV, interval, tempFilename);
	end
end


