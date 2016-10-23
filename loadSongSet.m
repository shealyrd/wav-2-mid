function songSetStruct = loadSongSet(source1, source2)
    SNR = 0; % noisy speech signal-to-noise ratio (dB)
    warning('off', 'MATLAB:audiovideo:wavread:functionToBeRemoved');
	[sampling1, fs1] = wavread(source1);
	[sampling2, fs2] = wavread(source2);
	mixtureSampling = addnoise(sampling1, sampling2, SNR ); 
	samplingSizes = [size(sampling1, 1), size(sampling2, 1), size(mixtureSampling, 1)];
	standardSize = min(samplingSizes);
	truncatedSampling1 = truncateArray(sampling1, standardSize);
	truncatedSampling2 = truncateArray(sampling2, standardSize);
	truncatedSampling3 = truncateArray(mixtureSampling, standardSize);
	field1 = 'source1';
	field2 = 'source2';
	field3 = 'mixture';
	songSetStruct = struct(field1, {truncatedSampling1}, field2, {truncatedSampling2}, field3, {truncatedSampling3});
end