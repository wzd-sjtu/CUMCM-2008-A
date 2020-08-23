function f=cal_line_loc(result_tmp,outline_basic_data)
    loc_x=1:length(outline_basic_data(:,1));
    loc_y=1:length(outline_basic_data(1,:));
    
    all_line_data={};
    % line_1
    k_for_line_1=(result_tmp(2,2)-result_tmp(1,2)/(result_tmp(2,1)-result_tmp(1,1)));
    b_for_line_1=result_tmp(2,2)-k_for_line_1*result_tmp(2,1);
    if isinf(k_for_line_1) 
        tmp_loc_x=zeros(length(loc_y),1)+result_tmp(2,1);
    else
        tmp_loc_x=(loc_y'-b_for_line_1)/k_for_line_1;
    end
    
    data_for_line_1=[tmp_loc_x,loc_y'];
    all_line_data=[all_line_data,{data_for_line_1}];
    
%     k_for_line_2=(result_tmp(3,2)-result_tmp(2,2)/(result_tmp(3,1)-result_tmp(2,1)));
%     b_for_line_2=result_tmp(3,2)-k_for_line_2*result_tmp(3,1);
%     data_for_line_2=[(loc_y'-b_for_line_2)/k_for_line_2,loc_y'];
%     all_line_data=[all_line_data,{data_for_line_2}];
%     
%     k_for_line_3=(result_tmp(3,2)-result_tmp(4,2)/(result_tmp(3,1)-result_tmp(4,1)));
%     b_for_line_3=result_tmp(3,2)-k_for_line_3*result_tmp(3,1);
%     data_for_line_3=[loc_x',k_for_line_3*loc_x'+b_for_line_3];
%     all_line_data=[all_line_data,{data_for_line_3}];
%     
%     k_for_line_4=(result_tmp(4,2)-result_tmp(1,2)/(result_tmp(4,1)-result_tmp(1,1)));
%     b_for_line_4=result_tmp(4,2)-k_for_line_2*result_tmp(4,1);
%     data_for_line_4=[(loc_y'-b_for_line_4)/k_for_line_4,loc_y'];
%     all_line_data=[all_line_data,{data_for_line_4}];
    
    f=all_line_data;
    
end