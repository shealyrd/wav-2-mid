function [input, output] = loadData(x)
    switch x
    case 1 
        index = randint(1, 1, 551);
        tempFilename = strcat('C:\Users\Evan\Desktop\Senior Project\trainingStructures\Training\', num2str(index), '.mat'); 
        load(tempFilename);
    case 2
        index = randint(1, 1, 138);
        tempFilename = strcat('C:\Users\Evan\Desktop\Senior Project\trainingStructures\Training\', num2str(index), '.mat'); 
        load(tempFilename);
    case 3
        index = randint(1, 1, 173);
        tempFilename = strcat('C:\Users\Evan\Desktop\Senior Project\trainingStructures\Training\', num2str(index), '.mat'); 
        load(tempFilename);
    otherwise
        disp('Error');
    end
    
    disp(size(trainingStruct.source1Mask));
    input = trainingStruct.mixture(1:(length(trainingStruct.mixture)*0.3));
    out1 = trainingStruct.source1Mask(1:(length(trainingStruct.mixture)*0.3));
    out2 = trainingStruct.source2Mask(1:(length(trainingStruct.mixture)*0.3));
    out3 = reshape(out1', [1,5091328]);
    out4 = reshape(out2', [1,5091328]);
    output = horzcat(out3, out4);
end

