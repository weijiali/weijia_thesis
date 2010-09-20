%matlab -noFigureWindows -nodesktop -nosplash -r 'run fdist1;exit'

clf
[x, a1, a2, a3] = textread('fdist1.txt','%d %f %f %f');

x2=[1.0, 2.0, 3.0 4.0 5.0]
b2=[a1, a2, a3]
hold on;
bc2=bar(x2,b2);
%set(bc2, 'BarWidth', 0.15);
set(bc2(1),'FaceColor',[0 0 0]); 
set(bc2(2),'FaceColor',[0.5 0.5 0.5]); 
set(bc2(3),'FaceColor',[1 1 1]); 

ymin=0;
ymax=3500;
legend('Deluge','Melete','MCP','Location','NorthEast')
axis([0.5 5.5 ymin ymax]);
yl=ylabel('Message Overhead (KBytes)');
xl=xlabel('Node Distribution (X,Y)=(Sources, Requesters)');
set(yl, 'FontSize',14)
set(xl, 'FontSize',14)
set(gca, 'Box', 'on');

set(gca, 'XTick', [1,2,3,4,5]);
xtls = ['(20,20)';
        '(30,20)';
        '(40,20)';
        '(30,10)';
        '(30,30)'];
set(gca, 'XTickLabel', xtls);
ytls = get(gca, 'YTick')
set(gca, 'YTickLabel', sprintf('%8.0f|',ytls))
set(gca, 'FontSize',14);
saveas(gcf, '../../figures/fdist1.eps', 'eps');
