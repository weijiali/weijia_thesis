load exe1.dat;
figure1 = bar(exe1,'group');

legend('CSOA','ICSOA','Location','NorthWest');

xlabel({'Test Case Number (M-D-1 ~ M-D-5)'},'fontsize',14);
ylabel({'Execution Overhead (# of instructions)'},'fontsize',14);
colormap(gray);
%title({'Code Quality Comparison between',' recompile and incremental-compile','(Single address register)'},'fontsize',16, 'FontWeight','bold');
saveas(gcf,'../../figures/da-exe1.eps','eps');
