load updm.dat;

y1 = updm(:,1);
y2 = updm(:,2);
y3 = updm(:,3);
y4 = updm(:,4);
y5 = updm(:,5);
y6 = updm(:,6);

x = [1; 
   2; 
   3; 
   4; 
   5
   ];
y = [y1,y2,y3,y4,y5,y6];



figure1 = bar(x,y);
xlabel({'Test Case Number (M-D-1 ~ M-D-5)'},'fontsize',14);
ylabel({'Script Size (bytes)'},'fontsize',14);
legend1 = legend('CGOA-simple','CGOA-advanced','CGOA-context-aware','ICGOA-simple','ICGOA-advanced','ICGOA-context-aware');
%ylim([0 250]);

colormap(gray);

%set(legend1,'Location','NorthEast','fontsize',12);
set(legend1,'fontsize',12);


%title({'Script Size Comparison between','recompile and incremental compile','(Double address register)'},'fontsize',16, 'FontWeight','bold')
saveas(gcf,'../../figures/updatem.eps','eps');
