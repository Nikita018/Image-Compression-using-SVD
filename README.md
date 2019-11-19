# Image-Compression-using-SVD
Image compression using SVD for colored and Gray scale images


We often need to transmit and store the images in many applications. Smaller the image, less is the cost associated with transmission and storage. So we often need to apply data compression techniques to reduce the storage space consumed by the image. One approach is to apply Singular Value Decomposition (SVD) on the image matrix. In this method, digital image is given to SVD. SVD refactors the given digital image into three matrices. Singular values are used to refactor the image and at the end of this process, image is represented with smaller set of values, hence reducing the storage space required by the image. Goal here is to achieve the image compression while preserving the important features which describe the original image. SVD can be adapted to any arbitrary, square, reversible and non-reversible matrix of m × n size. Compression ratio and Mean Square Error is used as performance metrics.

Bitmap images, such as jpg or png files, are matrices with a single number at each pixel location indicating the intensity of a particular color. If the image is an 8-bit gray-scale image then we have one single matrix with a value of 0 indicating black and 255 indicating white. Values between 0 and 255 indicate how gray the color at that pixel is to be. Color images are typically composed of three matrices: one for red, one for green, and one for blue. Using the intensity of each of these three colors allows for other colors, such as purple, to be shown at a pixel. As with the gray-scale images the scalar values for each of these colors ranges from 0 to 255 for 8-bit
images.

The fundamental concept of the SVD-based image compression scheme is to use a smaller number of rank to approximate the original matrix


We know that any matrix can be decomposed into the summation of rank-1 matrices:
A = USV T = u1S1vT1
+ u2S2vT2
+    + urSrvTr
;
where S is a singular value, u and v are singular vectors, and r is the rank of matrix A.
To compress an image you simply truncate the sum at the pth singular value:
A  u11vT1
+ u22vT2
+    + uppvTp
;
where p < r. What this means is that instead of storing the entire image matrix, we only need to store a small number of vectors and their
associated singular values to create an approximation of an image.
