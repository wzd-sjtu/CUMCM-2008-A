%��������������ģ�Ҳ���Ǽ򵥵�����ʽ
function f=target_function(tmp_result)
    %��Ŀ�������
    tmp=[1;1;1];
    %�������������
    f=abs((1/2)*det([tmp_result(1:3,:),tmp]))+abs((1/2)*det([tmp_result(2:4,:),tmp]));
end