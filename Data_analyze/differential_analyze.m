function [] = differential_analyze(cip_im,Compare)
%%
%改参数：
% ori_im_sam = ori_im_sam(1:size(ori_im,1)^2/4);注释
% for k_pos = 11:12    %改变原始图像某个像素值11:12
% for iter_seed=1:40   %seed相连
%可参考文献：
%Image encryption using 2D Logistic-adjusted-Sine map
%A novel chaos-based image encryption algorithm using DNA sequence operations
%期望：
%8BIT: NPCR=0.9961, UACI=0.3346
%7BIT: NPCR=0.9922, UACI=0.3359
%%
img_a=double(cip_im);
img_b=double(Compare.cipher);
largest_allowed_val = 128-1;  %8bit=256-1,7bit=128-1
num_of_pix = numel(img_a);
%% NCPR score and p_value
results.npcr_score = sum( double( img_a(:) ~= img_b(:) ) ) / num_of_pix;
npcr_mu  = ( largest_allowed_val ) / ( largest_allowed_val+ 1 );
npcr_var =  ( ( largest_allowed_val) / ( largest_allowed_val+ 1 )^2 ) / num_of_pix;
results.npcr_pVal = normcdf( results.npcr_score, npcr_mu, sqrt( npcr_var ) );
results.npcr_dist = [ npcr_mu, npcr_var ];
%% UACI score and p_value 
results.uaci_score = sum( abs( img_a(:) - img_b(:) ) ) / num_of_pix / largest_allowed_val; 
uaci_mu  = ( largest_allowed_val+2 ) / ( largest_allowed_val*3+3 );
uaci_var = ( ( largest_allowed_val+2 ) * ( largest_allowed_val^2 + 2*largest_allowed_val+ 3 ) /18 / ( largest_allowed_val+ 1 )^2 / largest_allowed_val) / num_of_pix;
p_vals = normcdf( results.uaci_score, uaci_mu, sqrt( uaci_var ) );
p_vals( p_vals > 0.5 ) = 1 - p_vals( p_vals > 0.5 );
results.uaci_pVal = 2 * p_vals;
results.uaci_dist = [ uaci_mu, uaci_var ];
%% print 
fprintf('NPCR:%f, UACI:%f \n', results.npcr_score, results.uaci_score);
fp = fopen(['../results/', 'Differential/', 'NPCR_UACI','.csv'],'a');
fprintf(fp,'%f, %f \n',results.npcr_score, results.uaci_score);
fclose(fp);
end