function [cip_im] = encryption_analyze(Trans, measure,Compare)
ori_im=measure.ori_im;
true_quantized_data = cell2mat(Trans.quantized_dif_y);
false_quantized_data = cell2mat(Trans.quantized_y);
%% reshape for data
num_block=numel(ori_im)/(measure.block_size^2);
OMEGA=cell2mat(Trans.new_OMEGA);
data_width = ceil(numel(OMEGA)/num_block);
cip_im=zeros(num_block,data_width);
cip_im(OMEGA)=true_quantized_data;
cip_im = cip_im(:,1:data_width-1);
cip_im_flase=zeros(num_block,data_width);
cip_im_flase(OMEGA)=false_quantized_data;
cip_im_flase = cip_im_flase(:,1:data_width-1);
%% analysis
exp_meth = '';
switch exp_meth
    case 'correlation'
        correlation_analyze(ori_im,cip_im,measure.car_im,2400);  %相关性
    case 'nist'
        nist_analyze(cip_im,measure,Trans);     %随机性NIST
    case 'histogram'
        histogram_analyze(ori_im,cip_im,cip_im_flase,measure); %直方图
    case 'entropy'
        entropy_analyze(ori_im,cip_im); %信息熵
    case 'differential'
        if measure.k_pos==12
            differential_analyze(cip_im,Compare); %差分攻击NPCR & UACI
        end
end


end