%2008-A MCMʵ���ֶ�
clc;
clear;
%%
%���ȶ�ȡͼ�񣬻������
target_pic=imread('image.jpg','jpg');
%imshow(target_pic);
target_pic=rgb2gray(target_pic);
%����ת����0-1���󣬷�����б�Ե����
%ʹ��find�������Ч��

ind_0=target_pic>=200;
ind_1=target_pic<200;
target_pic(ind_0)=0;
target_pic(ind_1)=1;

%figure();
%imshow(target_pic);
clear ind_0;
clear ind_1;