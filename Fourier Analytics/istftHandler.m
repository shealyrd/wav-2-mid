function istftVector = istftHandler(spectrogramMatrix)
	[istftVector, ~] = istft(spectrogramMatrix, 256, 1024, 48000);
end