function [] = nist_analyze(img_a,measure,Trans)
%%
%需修改参数: 
%quantize.bit=[8,8,8];quantize.refine_layer=[8,8,8];
%kk = 4
%measure.stego=0
%iter_seed=11:99
%%
k=1;
data_bit =int2bit(double(img_a),6);
IQDATA=data_bit;
IQname='IQDATA';
IQname(7)=num2str(k);
IQname(8)='_';
posname=num2str(measure.iter_seed);
IQname(9)=posname(1);
IQname(10)=posname(2);
IQname(11)='.';
IQname(12)='b';
IQname(13)='i';
IQname(14)='n';

if k==1
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end
if k==2
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end
if k==3
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end
if k==4
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end
if k==5
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end
if k==6
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end
if k==7
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end
if k==8
    fp = fopen(IQname,'a');
    fwrite(fp,IQDATA,'ubit1');
    fclose(fp);
end

end