
function renameFileDirectoryToOrdinals(directory)
    close('all');
	cd(directory)	
	files = dir('*.mat');
	for i = 1:length(files)
            source = files(i);
           % disp(length(files));
            tempFilename = strcat(num2str(i), '.mat');
            disp(tempFilename);
       	 	java.io.File(source.name).renameTo(java.io.File(tempFilename));
            close('all');
    end
end
