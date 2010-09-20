load upd.dat;

y1 = upd(:,1);
y2 = upd(:,2);
y3 = upd(:,3);
y4 = upd(:,4);
y5 = upd(:,5);
y6 = upd(:,6);

x = [1; 
   2; 
   3; 
   4; 
   5;
   6;
   7;
   8];
y = [y1,y2,y3,y4,y5,y6];



figure1 = bar(x,y);
xlabel({'Test Case Number (M-D-1 ~ M-D-5, R-D-1 ~ R-D-3)'},'fontsize',14);
ylabel({'Script Size (bytes)'},'fontsize',14);
legend1 = legend('CSOA-simple','CSOA-advanced','CSOA-context-aware','ICSOA-simple','ICSOA-advanced','ICSOA-context-aware');
%ylim([0 250]);

colormap(gray);

set(legend1,'Location','NorthWest','fontsize',12);

%title({'Script Size Comparison between','recompile and incremental compile','(Single address register)'},'fontsize',16, 'FontWeight','bold')
saveas(gcf,'../../figures/update.eps','eps');
