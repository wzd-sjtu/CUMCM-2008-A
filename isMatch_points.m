function f=isMatch_points(result_tmp,outline_loc)
    %判断向量是否在可行域
    %需要记录最高点，最低点，最左点，最右点，之后用直线上所有的点进行遍历
    
    
        highest_loc=min([outline_loc{1,1}(:,2);outline_loc{1,2}(:,2);outline_loc{1,3}(:,2);outline_loc{1,4}(:,2);outline_loc{1,5}(:,2)]);
        lowest_loc=max([outline_loc{1,1}(:,2);outline_loc{1,2}(:,2);outline_loc{1,3}(:,2);outline_loc{1,4}(:,2);outline_loc{1,5}(:,2)]);
        leftest_loc=min([outline_loc{1,1}(:,1);outline_loc{1,2}(:,1);outline_loc{1,3}(:,1);outline_loc{1,4}(:,1);outline_loc{1,5}(:,1)]);
        rightest_loc=max([outline_loc{1,1}(:,1);outline_loc{1,2}(:,1);outline_loc{1,3}(:,1);outline_loc{1,4}(:,1);outline_loc{1,5}(:,1)]);
%     
%     %目标是切线上面的所有点都不会有与这四个点相交
%     state=1;
%     % line_1
%     k_for_line_1=(result_tmp(2,2)-result_tmp(1,2)/(result_tmp(2,1)-result_tmp(1,1)));
%     b_for_line1=result_tmp(2,2)-k_for_line1*result_tmp(2,1);
%     loc_x=result_tmp(1,1):result_tmp(2,1);
%     loc_y=k_for_line_1.*loc_x+b_for_line1;
%     %此位置判断相切即可
%     
%     
%     k_for_line_2=(result_tmp(4,2)-result_tmp(2,2)/(result_tmp(4,1)-result_tmp(2,1)));
%     b_for_line2=result_tmp(4,2)-k_for_line2*result_tmp(4,1);
%     loc_y=result_tmp(2,2):result_tmp(4,2);
%     loc_x=(loc_y-b_for_line2)/k_for_line_2;
    
    %正确算法是 求取切线上面所有的坐标，保证所有圆的坐标都在切线框框里面，怎样保证呢？
    %可以采用把四条切线的坐标存储在一个元胞数组里面，之后对所有圆轮廓坐标进行判断即可
    all_line_loc=cal_line_loc(result_tmp,highest_loc,lowest_loc,leftest_loc,rightest_loc);
    
end