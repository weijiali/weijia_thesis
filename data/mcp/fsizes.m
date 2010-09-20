%matlab -noFigureWindows -nodesktop -nosplash -r 'run fsizes.m;exit'

clf
[x, a1,r1,d1, a2,r2,d2, a3,r3,d3] = textread('fsizes.txt','%d %f %f %f %f %f %f %f %f %f');
x1=[0.8, 1.8, 2.8, 3.8 4.8]
b1=[d1*32,r1*24,a1*34]

x2=[1.0, 2.0, 3.0 4.0 5.0]
b2=[d2*32,r2*24,a2*34]

x3=[1.2, 2.2, 3.2 4.2 5.2]
b3=[d3*32,r3*24,a3*34]

hold on;
bar1=bar(x1,b1, 'stack');
set(bar1, 'BarWidth', 0.15); 
bar2=bar(x2,b2, 'stack');
set(bar2, 'BarWidth', 0.15); 
bar3=bar(x3,b3, 'stack');
set(bar3, 'BarWidth', 0.15); 
set(bar1(1),'FaceColor',[0 0 0]); 
set(bar1(2),'FaceColor',[0.5 0.5 0.5]); 
set(bar1(3),'FaceColor',[1 1 1]); 
set(bar2(1),'FaceColor',[0 0 0]); 
set(bar2(2),'FaceColor',[0.5 0.5 0.5]); 
set(bar2(3),'FaceColor',[1 1 1]); 
set(bar3(1),'FaceColor',[0 0 0]); 
set(bar3(2),'FaceColor',[0.5 0.5 0.5]); 
set(bar3(3),'FaceColor',[1 1 1]); 

ymin=0;
ymax=3.5e6;
legend('Data Msg','Req Msg','Adv Msg',2)
axis([0.5 5.5 ymin ymax]);
yl=ylabel('Message Overhead (KBytes)');
xl=xlabel('Network Sizes');
set(yl, 'FontSize',14)
set(xl, 'FontSize',14)

an1=annotation('textarrow',[0.3317 0.3317], [0.5074 0.3674], 'string', '  Deluge');
an2=annotation('textarrow',[0.3626 0.3626], [0.3705 0.2305], 'string', '     Melete')
an3=annotation('textarrow',[0.3942 0.3942], [0.3307 0.2107], 'string', '     MCP')
set(an1,'color', 'b', 'fontweight','bold')
set(an2,'color', 'b', 'fontweight','bold')
set(an3,'color', 'b', 'fontweight','bold')

set(gca, 'XTick', [1,2,3,4,5]);
xtls = [' 8x8 ';
        '10x10';
        '12x12';
        '14x14';
        '16x16'];
set(gca, 'XTickLabel', xtls);
ytls = get(gca, 'YTick')
set(gca, 'YTickLabel', sprintf('%8.0f|',ytls/1000))
set(gca, 'Box', 'on');
set(gca, 'FontSize',14);
saveas(gcf, '../../figures/fsizes.eps', 'eps');
