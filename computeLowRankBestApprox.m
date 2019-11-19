%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB function to compute rank-p matrix B of matrix A that is the best
% approximation of A in 2-norm
% Created by : Nikita Goswami
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      Input
%           A = given input matrix
%           p = rank of matrix to be returned
%      Output
%           B : Best rank-p approximation to A in 2-norm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [B] = computeLowRankBestApprox(A,p)
    
    if p>=rank(A) % Returning A matrix if p>=A
        B=A;
    else
        B = A;
        [U,S,V] = svd(A);
        S_temp = S;
        for i=p+1:rank(A)
            S_temp(i,i)=0 ;% Substitution (size_A-p) values of sigma as 0
        end
        B = U*S_temp*V'; % Computing matrix B using SVD decomposition
    end
end
        
    