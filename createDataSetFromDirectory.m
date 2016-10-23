function [x, t] = createDataSetFromDirectory(directory)
    x = [];
	t = [];
	for i = 1:100
        ridx = randi(4000);
		tempFilename = strcat(directory, '\', num2str(ridx), '.mat');
		signalStruct = load(tempFilename);
		spec = signalStruct.output.spectrogram;
		unwrappedSpec = reshape(spec', 9216, 1);
        unwrappedSpecReal = real(unwrappedSpec);
        unwrappedSpecImag = imag(unwrappedSpec);
        unwrappedCombined = vertcat(unwrappedSpecReal, unwrappedSpecImag);
		x = horzcat(x, unwrappedCombined);
        %x = single(x);
		t = horzcat(t, signalStruct.output.classification);
        %t = single(t);
		disp(i);
	end
end