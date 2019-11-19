%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB function to that takes in a file name f and approximation rank p and
% returns the rank-p approximate image img.
% Created by : Nikita Goswami
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Input
%           f = image file name
%           p = rank of image matrix to be returned
%      Output
%           img : Best rank-p approximation to actual image in 2-norm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [img] = computeBestLowRankImage(f,p)
    File = imread(f); 
    Y = double(File);
    [~,~,l]= size(Y);
    I=Y;
    for i=1:l
        D = Y(:,:,i);
        [B] = computeLowRankBestApprox(D,p);
        I(:,:,i)=B;
    end
img = uint8(I);
%dis = mat2gray(img);
%figure;
%imshow(dis);
end