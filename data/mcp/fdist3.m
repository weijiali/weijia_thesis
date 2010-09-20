%matlab -noFigureWindows -nodesktop -nosplash -r 'run fdist3;exit'

clf
[x, a1, a2, a3] = textread('fdist3.txt','%d %f %f %f');

x2=[1.0, 2.0, 3.0]
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
axis([0.5 3.5 ymin ymax]);
yl=ylabel('Message Overhead (KBytes)');
set(yl, 'FontSize',14)
%xl=xlabel('    ');
%set(xl, 'FontSize',14)

set(gca, 'XTick', [1,2,3]);
xtls = ['EvenD  ';
        'CornerD';
        'SideD  '];
set(gca, 'XTickLabel', xtls);
ytls = get(gca, 'YTick')
set(gca, 'YTickLabel', sprintf('%8.0f|',ytls))
set(gca, 'Box', 'on');
set(gca, 'FontSize',14);
saveas(gcf, '../../figures/fdist3.eps', 'eps');
