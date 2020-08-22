%图像边缘提取+孤立点去除

target_pic_boundary=zeros(length(target_pic(:,1)),length(target_pic(1,:)));
for i=2:length(target_pic(:,1))-1
    for j=2:length(target_pic(1,:))-1
        if(target_pic(i,j)==1)
            if(target_pic(i-1,j)==0||target_pic(i+1,j)==0||target_pic(i,j-1)==0||target_pic(i,j+1)==0)
                target_pic_boundary(i,j)=1;
            else
                target_pic_boundary(i,j)=0;
            end
        end
    end
end
for i=2:length(target_pic(:,1))-1
    for j=2:length(target_pic(1,:))-1
        if(target_pic(i,j)==1)
            if(target_pic(i-1,j)==0&&target_pic(i+1,j)==0&&target_pic(i,j-1)==0&&target_pic(i,j+1)==0)
                target_pic_boundary(i,j)=0;
            end
        end
    end
end
clear i;
clear j;
figure;
imshow(target_pic_boundary);
outline_basic_data=target_pic_boundary;