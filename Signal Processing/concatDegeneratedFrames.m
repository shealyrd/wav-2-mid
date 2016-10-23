function fullsong = concatDegeneratedFrames(maskedFramesVector)
fullsong = [];
for i = 1:50
cleanSong = maskedFramesVector(:,i);
cleanSong(1:25) = boundVectorElements(cleanSong(1:25), 0.00001, -0.00001);
cleanSong(26:50) = cleanSong(26:50) * 0.25;
cleanSong(50:75) = cleanSong(50:75) * 0.5;
cleanSong(775:800) = boundVectorElements(cleanSong(775:800), 0.00001, -0.00001);
cleanSong(750:774) = cleanSong(750:774) * 0.25;
cleanSong(725:749) = cleanSong(725:749) * 0.5;
h = 1/20*ones(20,1);
cleanSong(1:80) = filtfilt(h,1,cleanSong(1:80));
cleanSong(720:800) = filtfilt(h,1,cleanSong(720:800));
fullsong = horzcat(fullsong, cleanSong);
end
end