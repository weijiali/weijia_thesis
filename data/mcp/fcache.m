%matlab -noFigureWindows -nodesktop -nosplash -r 'run fcache;exit'

clf
[x, a1, a2] = textread('fcache.txt','%d %f %f');

x2=[1.0, 2.0, 3.0 4.0]
b2=[a1, a2]

bc2=bar(x2,b2);
%set(bc2, 'BarWidth', 0.15); 
set(bc2(1),'FaceColor',[0.5 0.5 0.5]);
set(bc2(2),'FaceColor',[1 1 1]);

ymin=0;
ymax=2500;
legend('Melete','MCP','Location','NorthEast')
axis([0.5 4.5 ymin ymax]);
yl=ylabel('Message Overhead (KBytes)');
xl=xlabel('Number of Cache Entries');
set(yl, 'FontSize',14)
set(xl, 'FontSize',14)
set(gca, 'Box', 'on');

set(gca, 'XTick', [1,2,3,4,5]);
xtls = ['N=0';
        'N=1';
        'N=2';
        'N=3'];
set(gca, 'XTickLabel', xtls);
ytls = get(gca, 'YTick')
set(gca, 'YTickLabel', sprintf('%8.0f|',ytls))
set(gca, 'FontSize',14);
saveas(gcf, '../../figures/fcache.eps', 'eps');
