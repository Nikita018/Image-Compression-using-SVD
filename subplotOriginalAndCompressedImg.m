%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB function to create a subplot of original and compressed images
% with ranks given as input to the function
% Created by : Nikita Goswami
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Input
%           f = image file name
%           pArray = array of p values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function subplotOriginalAndCompressedImg(f,pArray)
    j = ceil((size(pArray,2)+1)/4);
    File = imread(f);
    image = uint8(File);
    subplot(j,4,1,'Align');
    imshow(image);
    title(sprintf("Original"))
    drawnow
    for i=1:size(pArray,2)
        [img] = computeBestLowRankImage(f,pArray(i));
        I = mat2gray(img);
        subplot(j,4,i+1,'Align');
        imshow(I);
        title(sprintf('Rank = %d', pArray(i)));
        drawnow
    end
end    
