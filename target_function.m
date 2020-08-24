%这个函数是完整的，也就是简单的行列式
function f=target_function(tmp_result)
    %是目标面积和
    tmp=[1;1;1];
    %求三角形面积和
    f=abs((1/2)*det([tmp_result(1:3,:),tmp]))+abs((1/2)*det([tmp_result(2:4,:),tmp]));
end