%初始解
result=[1,1;1,585;400,550;400,1];
result_tmp=result;
%边界坐标集合
outline_loc=[boundary_loc(1),boundary_loc(2),boundary_loc(3),boundary_loc(4),boundary_loc(5)];

T_max=100;
T_min=0.01;
T_now=T_max;

E=[];
dE=[];
circle_times=0;

loc_max_change=10;
loc_min_change=1;

best_result=result;
best_square_size=target_function(result);

while T_now>=T_min
    circle_times=circle_times+1;
    state=0;
    while state==0
        state_n=0;
        %扰动寻找下一个点
        while state_n==0
            result_tmp=result+random_Disturb(2,T_max,T_now,T_min,loc_max_change,loc_min_change);
            
            if isMatch_points(result_tmp,outline_loc,outline_basic_data)==1
                state_n=1;
                
            end
        end
        %计算能量变化
        E=target_function(result_tmp);
        dE=E-target_function(result);
        if dE<=0
            result=result_tmp;
            state=1;
        else
            %一定的概率进行扰动，温度越高，扰动的范围越大
            p=exp(-dE/T_now);
            if p>=rand(1)
               result=result_tmp;
               state=1;
            end
        end
        if mod(circle_times,10)==0
            %
            T_now=0.92*T_now;
        end
        if E<best_square_size
            best_result=result;
            best_square_size=E;
        end
        if T_now==100||T_now<0.014
            figure;
            show_the_pic;
        end
%         disp(best_square_size);
    end
end

best_square_size
target_function(best_result)