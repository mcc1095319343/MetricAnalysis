function [results] = entropy_analyze(ori_im,img_a)
%% 原始图片信息熵
T1=imhist(uint8(ori_im));   %统计图像灰度值从0~255的分布情况，存至T1
S1=sum(T1);     %计算整幅图像的灰度值
results.xxs1=0;
for i=1:2^8
    pp1=T1(i)/S1;   %每个灰度值占比，即每个灰度值的概率
    if pp1~=0
        results.xxs1=results.xxs1-pp1*log2(pp1);
    end
end
%% 加密后信息熵
T2=imhist(uint8(img_a));
S2=sum(T2);
results.xxs2=0;
for i=1:2^6
    pp2=T2(i)/S2;
    if pp2~=0
        results.xxs2=results.xxs2-pp2*log2(pp2);
    end
end
%% print 
fprintf('entropy1:%f, entropy2:%f \n', results.xxs1, results.xxs2);
fp = fopen(['../results/', 'Entropy_attack/', 'Inf_Entro','.csv'],'a');
fprintf(fp,'%f, %f \n', results.xxs1, results.xxs2);
fclose(fp);

end