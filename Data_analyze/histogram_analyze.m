function [] = histogram_analyze(ori_im,img_a,img_b,measure)
%% ??һ??ֱ??ͼ????
cipher_name = ['ste_im_svd','.tif'];
Test_image_dir='../Stego/';
ste_im=double(imread(fullfile(Test_image_dir, cipher_name))) ;

% if measure.k==2
%     %% ԭʼͼ??2
%     figure(measure.k)
%     h1 = histogram(ori_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.015], ... 
%       'XLim', [1,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:50:250,...
%       'YTick'       ,0:0.003:0.015);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ????ͼ??2
%     figure(10+measure.k)
%     h1 = histogram(img_a(:),0:1:64,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.02], ... 
%       'XLim', [1,64], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:16:64,...
%       'YTick'       ,0:0.004:0.02);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ????ͼ??10
%     figure(30)
%     h1 = histogram(measure.car_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.015], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.003:0.015);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ??дͼ??10
%     figure(110)
%     h1 = histogram(ste_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.015], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.003:0.015);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
% end
% 
% if measure.k==3
%     %% ԭʼͼ??2
%     figure(measure.k)
%     h1 = histogram(ori_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.01], ... 
%       'XLim', [1,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:50:250,...
%       'YTick'       ,0:0.002:0.01);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ????ͼ??2
%     figure(10+measure.k)
%     h1 = histogram(img_a(:),0:1:64,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.02], ... 
%       'XLim', [1,64], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:16:64,...
%       'YTick'       ,0:0.004:0.02);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ????ͼ??10
%     figure(30)
%     h1 = histogram(measure.car_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.015], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.003:0.015);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ??дͼ??10
%     figure(110)
%     h1 = histogram(ste_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.015], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.003:0.015);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
% end
% 
% if measure.k==4
%     %% ԭʼͼ??3
%     figure(measure.k)
%     h1 = histogram(ori_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.02], ... 
%       'XLim', [1,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:50:250,...
%       'YTick'       ,0:0.004:0.02);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ????ͼ??3
%     figure(10+measure.k)
%     h1 = histogram(img_a(:),0:1:64,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.02], ... 
%       'XLim', [1,64], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:16:64,...
%       'YTick'       ,0:0.004:0.02);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ????ͼ??11
%     figure(31)
%     h1 = histogram(measure.car_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.03], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.006:0.03);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ??дͼ??11
%     figure(111)
%     h1 = histogram(ste_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.03], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.006:0.03);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
% end
% 
% if measure.k==5
%     %% ԭʼͼ??4
%     figure(measure.k)
%     h1 = histogram(ori_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.05], ... 
%       'XLim', [1,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:50:250,...
%       'YTick'       ,0:0.01:0.05);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.2f'));
%     %% ????ͼ??4
%     figure(10+measure.k)
%     h1 = histogram(img_a(:),0:1:64,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.02], ... 
%       'XLim', [1,64], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,0:16:64,...
%       'YTick'       ,0:0.004:0.02);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ????ͼ??12
%     figure(32)
%     h1 = histogram(measure.car_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.035], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.007:0.035);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
%     %% ??дͼ??12
%     figure(112)
%     h1 = histogram(ste_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);
%     set(gca, ...
%       'YLim', [0,0.035], ... 
%       'XLim', [0,255], ...
%       'Box'         , 'off'     , ...
%       'TickDir'     , 'out'     , ...
%       'XMinorTick'  , 'on'      , ...
%       'YGrid'       , 'on'      , ...
%       'XColor'      , [.1 .1 .1], ...
%       'YColor'      , [.1 .1 .1], ...
%       'LineWidth'   , 1.5 ,...
%       'FontName'    , 'Times',...
%       'FontSize'    ,17,...
%       'FontWeight'  , 'norm',...
%       'XTick'       ,50:50:250,...
%       'YTick'       ,0:0.007:0.035);
%     set(gca,'YTickLabel'  ,num2str(get(gca,'YTick')','%.3f'));
% end

%% variance
% his_test = histogram(ori_im(:),0:2:255,'Normalization','pdf', 'FaceColor', [0.4,0.4,0.4], 'EdgeColor', [1,1,1]);

p=imhist(uint8(ori_im));
p=p(1:2^8)/sum(p);
sum1=0;
for i=1:2^8
    for j=1:2^8
        sum1=sum1+((p(i)-p(j))*(p(i)-p(j)))/2;
    end
end
vari=sum1/((2^8)*(2^8));

p2=imhist(uint8(img_a));
p2=p2(1:2^6)/sum(p2);
sum2=0;
for i=1:2^6
    for j=1:2^6
        sum2=sum2+((p2(i)-p2(j))*(p2(i)-p2(j)))/2;
    end
end
vari2=sum2/((2^6)*(2^6));
% vari=0;
fprintf('histogram_var:%.12f, histogram_var2:%.12f \n', vari, vari2);
fp = fopen(['../results/', 'Histogram', '/', 'variance','.csv'],'a');
fprintf(fp,'%.12f, %.12f \n', vari, vari2);
fclose(fp);
end