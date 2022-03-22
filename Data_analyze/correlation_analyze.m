function [] = correlation_analyze(ori_im,cip_im,car_im,num)
cipher_name = ['ste_im_svd','.tif'];
Test_image_dir='../Stego/';
ste_im=double(imread(fullfile(Test_image_dir, cipher_name))) ;
[horizontal_p, vertical_p, diagonal_p] = self_correlation(ori_im,num,1); %1/0ÎªÊÇ·ñÊä³öcorrelationÍ¼
[horizontal_c, vertical_c, diagonal_c] = self_correlation(cip_im,num,1);
[horizontal_car, vertical_car, diagonal_car] = self_correlation(car_im,num,1);
[horizontal_s, vertical_s, diagonal_s] = self_correlation(ste_im,num,1);
out(1,1) = horizontal_p(1,2);
out(2,1) = vertical_p(1,2);
out(3,1) = diagonal_p(1,2);
out(1,2) = horizontal_c(1,2);
out(2,2) = vertical_c(1,2);
out(3,2) = diagonal_c(1,2);
%% 
fprintf('horizontal_p:%f, vertical_p:%f , diagonal_p:%f \n', out(1,1), out(2,1), out(3,1));
fp = fopen(['../results/', 'Correlation/', 'cor_hvd_p','.csv'],'a');
fprintf(fp,'%f, %f, %f \n', out(1,1), out(2,1), out(3,1));
fclose(fp);
fprintf('horizontal_c:%f, vertical_c:%f , diagonal_c:%f \n', out(1,2), out(2,2), out(3,2));
fp = fopen(['../results/', 'Correlation/', 'cor_hvd_c','.csv'],'a');
fprintf(fp,'%f, %f, %f \n', out(1,2), out(2,2), out(3,2));
fclose(fp);
end