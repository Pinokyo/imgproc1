A=imread('hw2_problem1.tif');
figure
subplot(3,2,1)
imshow(A)
subplot(3,2,2)
imhist(A,64) %Displaying Input image and its histogram 

bin=255; %Specify the bin range[0 255]
Val=reshape(A,[],1);
Val=double(Val);
I=hist(Val,0:bin);
Output=I/numel(A); %Divide the result by number of pixels
CSum=cumsum(Output); %Calculate the Cumlative sum
HIm=CSum(A+1); %Perform the transformation S=T(R) where S and R in the range [ 0 1]
HIm=uint8(HIm*bin); %HIm is the final image
subplot(3,2,3)
imshow(HIm)
subplot(3,2,4)
imhist(HIm,64) %Displaying output image of my algorithm and its histogram 

J = histeq(A);
subplot(3,2,5)
imshow(J)
subplot(3,2,6)
imhist(J,64) %Displaying output image of histeq function and its histogram 








