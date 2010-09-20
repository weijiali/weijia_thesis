load exe_rand_mid.dat;

y1 = exe_rand_mid(:,1);
y2 = exe_rand_mid(:,2);

x = [1;
	2;
	3;
	4;
	5;];
y = [y1,y2];




figure1 = figure('XVisual',...
    '0x23 (TrueColor, depth 24, RGB mask 0xff0000 0xff00 0x00ff)');

axes1 = axes('Parent',figure1,'XTick',[1 2 3 4 5],'XGrid','on','FontSize',16);


bar1 = bar(x,y,'Parent',axes1);
legend('CSOA','ICSOA','Location','NorthWest');

xlabel({'New Access %'},'fontsize',14);
ylabel({'Execution Overhead (# of instructions)'},'fontsize',14);

xtls = ['5% ';
        '10%';
        '20%';
        '40%';
	'60%';];

set(gca, 'XTickLabel',xtls);
ylim([0 120]);
colormap(gray);

%title({'Code Quality Comparison between',' recompile and incremental-compile','(scattered new code insertion)'},'fontsize',16, 'FontWeight','bold');
saveas(gcf,'../../figures/exe_rand_bar.eps','eps');
