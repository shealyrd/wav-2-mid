function frames = degenerateSignal(wav)
	downSampledWAV = resample(wav, 1, 6);
	frames = vec2frames(downSampledWAV, 800, 800);
end 