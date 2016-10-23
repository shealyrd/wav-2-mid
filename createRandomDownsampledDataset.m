function createRandomDownsampledDataset(directory, classification, sampleNumber)
	field1 = 'spectrogram';
	field2 = 'classification';
	f = dir(directory);
	for i = 1:sampleNumber
		ridx = randi(numel(f)-3);
        ridx = ridx + 2;
        disp(f(ridx).name);
		x = wavread(strcat(directory, '\', f(ridx).name));
		frames = degenerateSignal(x);
		rframe = randi(50);
		tempFilename = strcat(directory, '\degenerated\', num2str(i), '.mat');
		spec = stftHandler(frames(:,rframe), 8000);
		output = struct(field1, {spec}, field2, {classification});
		save(tempFilename, 'output');
	end
end