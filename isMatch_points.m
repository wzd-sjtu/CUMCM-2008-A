function f=isMatch_points(result_tmp,outline_loc,outline_basic_data)
    %�ж������Ƿ��ڿ�����
    %��Ҫ��¼��ߵ㣬��͵㣬����㣬���ҵ㣬֮����ֱ�������еĵ���б���
    %�������������������е�����ж�
    
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
    all_line_loc=cal_line_loc(result_tmp,outline_basic_data);
    save all_line_loc;
    %�õ��������ߵĵ�Ԫ�����꣬��������ж�
    %����߽������Ӧ��������������ı�����������
    state=1;
    for i=1:1:5
        idx=outline_loc{1,i}(:,1);
        idy=outline_loc{1,i}(:,2);
        
%         if idx>=all_line_loc{1,1}(idy,1)&idx<=all_line_loc{1,3}(idy,1)&...
%                 idy>=all_line_loc{1,4}(idx,2)&idy<=all_line_loc{1,2}(idx,2)
        if  compare_special_vector(idx,all_line_loc{1,1}(idy,1))&&...
                compare_special_vector(all_line_loc{1,3}(idy,1),idx)&&...
                compare_special_vector(idy,all_line_loc{1,4}(idx,2))&&...
                compare_special_vector(all_line_loc{1,2}(idx,2),idy)
            state=1;
        else
            state=0;
        end
        if state==0
            break;
        end
    end
    
    f=state;
    
end
function ff=compare_special_vector(a,b)
    state=1;
    for i=1:1:length(a)
       if(a(i)>b(i)) 
           state=1;
       else
           state=0;
       end
       if state==0
           break;
       end
    end
    ff=state;
end