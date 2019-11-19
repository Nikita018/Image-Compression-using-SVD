images = ["futurama.png","UB.png","square.png"];
for i=1:3
    File = imread(images(i));
    imageD = double(File);
    [m,n,l]= size(imageD);
    pixel_actual=m*n*l;
    img=image(:);
    img = double(img);
    max = min(m,n);
    p_val = linspace(10,max,10);
    dispEr = zeros(10,10);
    for j=1:length(p_val)
        p=ceil(p_val(j));
        compressed_pixel=l*p*(m+n+1);
        compression_ratio(j)=compressed_pixel/pixel_actual;
        B = computeBestLowRankImage(images(i),p);
        B = B(:);
        B=double(B);
        error = norm(img)-norm(B);
        dispEr(j)= error;
     end
     compression_ratio;
     plot(p_val, dispEr)
     title('Difference in Original and Compressed image');
     xlabel('Number of singular values used');
     ylabel('Difference in norm of original and compressed image');  
     fileName = sprintf('Plot%s', images(i)); % Create filename.
     saveas(gca, fileName);
 
    
end

futurama_arr=[1200,1000,700,600,300,100,50];
UB_arr=[242,200,150,100,50,20,10];
square_arr=[200,100,50,10,5,2,1];

nikitago_hw6_p4b('futurama.PNG',futurama_arr);
nikitago_hw6_p4b('UB.PNG',UB_arr);
nikitago_hw6_p4b('square.PNG',square_arr);


