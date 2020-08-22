%2008-A MCM实验手段
clc;
clear;
%%
%首先读取图像，获得数据
target_pic=imread('image.jpg','jpg');
%imshow(target_pic);
target_pic=rgb2gray(target_pic);
%数据转换成0-1矩阵，方便进行边缘处理
%使用find可以提高效率

ind_0=target_pic>=200;
ind_1=target_pic<200;
target_pic(ind_0)=0;
target_pic(ind_1)=1;

%figure();
%imshow(target_pic);
clear ind_0;
clear ind_1;