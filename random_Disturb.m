%��������Ŷ��ĸ�������
%���ǱȽϸ߼����㷨��
function f=random_Disturb(n,T_max,T_now,T_min,loc_max_change,loc_min_change)
    m=((loc_min_change-loc_max_change)/(T_min-T_max))+loc_max_change-T_max*((loc_min_change-loc_max_change)/(T_min-T_max));
    a=round((rand(1,n)*2-1)*m);
    f=a;
end