%生成随机扰动的辅助函数
%算是比较高级的算法了

%这里的random有点混乱，暂时不是特别的清楚
function f=random_Disturb(n,T_max,T_now,T_min,loc_max_change,loc_min_change)
%     m=((loc_min_change-loc_max_change)/(T_min-T_max))+loc_max_change-T_max*((loc_min_change-loc_max_change)/(T_min-T_max));
%     a=round((rand(1,n)*2-1)*m);
%     f=a;
    a=round((rand(4,2)*2-1).*loc_max_change);
    f=a; %直接随机扰动
end