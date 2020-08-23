boundary_loc={};
k=1;
i=2;
j=2;
state=0;
while(state==0)
   tmp_circle_loc=[];
   %得到圆的起点
   for i=2:length(target_pic_boundary(:,1))-1
       for j=2:length(target_pic_boundary(1,:))-1
           if(target_pic_boundary(i,j)==1)
               break;
           end
       end
       if(target_pic_boundary(i,j)==1)
           break;
       end
   end
   %未完成
   if(i==(length(target_pic_boundary(:,1))-1)&&j==(length(target_pic_boundary(1,:))-1))
       state=1;
       break;
   else
       state_n=0;
       while state_n==0
           target_pic_boundary(i,j)=0;
           tmp_circle_loc=[tmp_circle_loc;i,j];
           if target_pic_boundary(i+1,j)==1
               i=i+1;
           elseif target_pic_boundary(i-1,j)==1
               i=i-1;
           elseif target_pic_boundary(i,j+1)==1
               j=j+1;
           elseif target_pic_boundary(i,j-1)==1
               j=j-1;
           elseif target_pic_boundary(i+1,j+1)==1
               i=i+1;j=j+1;
           elseif target_pic_boundary(i+1,j-1)==1
               i=i+1;j=j-1;
           elseif target_pic_boundary(i-1,j+1)==1
               i=i-1;j=j+1;
           elseif target_pic_boundary(i-1,j-1)==1
               i=i-1;j=j-1;
           else
               state_n=1;
           end
       end
       for i=2:length(target_pic_boundary(:,1))-1
            for j=2:length(target_pic_boundary(1,:))-1
                if(target_pic_boundary(i,j)==1)
                    if(target_pic_boundary(i-1,j)==0&&target_pic_boundary(i+1,j)==0&&...
                        target_pic_boundary(i,j-1)==0&&target_pic_boundary(i,j+1)==0&&...
                        target_pic_boundary(i+1,j+1)==0&&target_pic_boundary(i+1,j-1)==0&&...
                        target_pic_boundary(i-1,j-1)==0&&target_pic_boundary(i-1,j+1)==0)
                        target_pic_boundary(i,j)=0;
                    end
                end
            end
       end
       if(k<10)
       %figure;
       pause(0.5);
       imshow(target_pic_boundary);
       end
       k=k+1;
       boundary_loc=[boundary_loc,{tmp_circle_loc}];
   end
   
end
%boundary_loc(2)=[];

clear i j k state state_n target_pic target_pic_boundary tmp_circle_loc