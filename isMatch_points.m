function f=isMatch_points(result_tmp,outline_loc)
    %�ж������Ƿ��ڿ�����
    %��Ҫ��¼��ߵ㣬��͵㣬����㣬���ҵ㣬֮����ֱ�������еĵ���б���
    
    
        highest_loc=min([outline_loc{1,1}(:,2);outline_loc{1,2}(:,2);outline_loc{1,3}(:,2);outline_loc{1,4}(:,2);outline_loc{1,5}(:,2)]);
        lowest_loc=max([outline_loc{1,1}(:,2);outline_loc{1,2}(:,2);outline_loc{1,3}(:,2);outline_loc{1,4}(:,2);outline_loc{1,5}(:,2)]);
        leftest_loc=min([outline_loc{1,1}(:,1);outline_loc{1,2}(:,1);outline_loc{1,3}(:,1);outline_loc{1,4}(:,1);outline_loc{1,5}(:,1)]);
        rightest_loc=max([outline_loc{1,1}(:,1);outline_loc{1,2}(:,1);outline_loc{1,3}(:,1);outline_loc{1,4}(:,1);outline_loc{1,5}(:,1)]);
%     
%     %Ŀ����������������е㶼�����������ĸ����ཻ
%     state=1;
%     % line_1
%     k_for_line_1=(result_tmp(2,2)-result_tmp(1,2)/(result_tmp(2,1)-result_tmp(1,1)));
%     b_for_line1=result_tmp(2,2)-k_for_line1*result_tmp(2,1);
%     loc_x=result_tmp(1,1):result_tmp(2,1);
%     loc_y=k_for_line_1.*loc_x+b_for_line1;
%     %��λ���ж����м���
%     
%     
%     k_for_line_2=(result_tmp(4,2)-result_tmp(2,2)/(result_tmp(4,1)-result_tmp(2,1)));
%     b_for_line2=result_tmp(4,2)-k_for_line2*result_tmp(4,1);
%     loc_y=result_tmp(2,2):result_tmp(4,2);
%     loc_x=(loc_y-b_for_line2)/k_for_line_2;
    
    %��ȷ�㷨�� ��ȡ�����������е����꣬��֤����Բ�����궼�����߿�����棬������֤�أ�
    %���Բ��ð��������ߵ�����洢��һ��Ԫ���������棬֮�������Բ������������жϼ���
    all_line_loc=cal_line_loc(result_tmp,highest_loc,lowest_loc,leftest_loc,rightest_loc);
    
end