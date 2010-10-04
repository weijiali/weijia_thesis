load updm2.dat;

y1 = updm2(:,1);
y2 = updm2(:,2);
y3 = updm2(:,3);
y4 = updm2(:,4);
y5 = updm2(:,5);
y6 = updm2(:,6);

x = [1; 
   2; 
   3];
y = [y1,y2,y3,y4,y5,y6];



figure1 = bar(x,y);
xlabel({'Test Case Number (R-D-1 ~ R-D-3)'},'fontsize',14);
ylabel({'Script Size (bytes)'},'fontsize',14);
legend1 = legend('CGOA-simple','CGOA-advanced','CGOA-context-aware','ICGOA-simple','ICGOA-advanced','ICGOA-context-aware');
%ylim([0 250]);

colormap(gray);

set(legend1,'Location','NorthWest','fontsize',12);

%title({'Script Size Comparison between','recompile and incremental compile','(Double address register)'},'fontsize',16, 'FontWeight','bold')
saveas(gcf,'../../figures/updatem2.eps','eps');
