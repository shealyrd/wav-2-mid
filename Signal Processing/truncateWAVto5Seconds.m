function truncatedSong = truncateWAVto5Seconds(song)
	truncatedSong = song(1:1+5*48000-1, :);
end