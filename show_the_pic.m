%用于展示图像的文件
load all_line_loc;

for i=1:1:5
    
   hold on;
   plot(boundary_loc{1,i}(:,1),boundary_loc{1,i}(:,2));
end
for i=1:1:4
    
   hold on;
   plot(all_line_loc{1,i}(:,1),all_line_loc{1,i}(:,2));
end
clear i ;