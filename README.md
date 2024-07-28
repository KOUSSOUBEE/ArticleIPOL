The source code is divided into five programs which must be tested independently.

Program 1 
This program does not require any particular data. This program is used to determine the sub-key k2. 
The image information can be retrieved using the imfinfo function.

Program 2
 This program calculates the sub-key k1. You must first load an image and the programme calculates and displays the sub-key k1.
 
Program 3
This program inserts a mark using the Least Significant Bit technique. 
You must first load the images ( five ) and a mark; the programme inserts the mark in each image and calculates the PNSR, the SSIM and the NC. 
The images must be in greyscale. If they are not, you must convert them using the rgb2gray function.

Program 4
This program simulates the hyper-catadioptric projection of aligned points. 
This program does not require any particular data, just the model parameters. 
Throughout the programme we have fixed z, then for each y we vary the x. 
The aim of this programme is to observe the transition from Euclidean space to hyperbolic space. 

Program 5 
This program is equivalent to program 4 except that the points are the coordinates of the selected pixel. 
For each pixel we set the value of z. 
