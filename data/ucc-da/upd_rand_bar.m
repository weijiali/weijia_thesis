load upd_rand_mid.dat;

y1 = upd_rand_mid(:,1);
y2 = upd_rand_mid(:,2);
y3 = upd_rand_mid(:,3);
y4 = upd_rand_mid(:,4);
y5 = upd_rand_mid(:,5);
y6 = upd_rand_mid(:,6);

x = [1; 
   2; 
   3; 
   4; 
   5];
y = [y1,y2,y3,y4,y5,y6];



figure1 = bar(x,y);
xlabel({'Updated %'},'fontsize',14);
ylabel({'Script Size (bytes)'},'fontsize',14);
legend1 = legend('CSOA-simple','CSOA-advanced','CSOA-Context-aware','ICSOA-simple','ICSOA-advanced','ICSOA-context-aware');
ylim([0 250]);

set(legend1,'Location','NorthWest','fontsize',12);
xtls = ['5% ';
	'10%';
	'20%';
	'40%';
	'60%'];

colormap(gray);

set(gca,'XTickLabel',xtls);
%title({'Script Size Comparison between','recompile and incremental compile','(scattered new code insertion)'},'fontsize',16, 'FontWeight','bold')
saveas(gcf,'../../figures/upd_rand_bar.eps','eps');
