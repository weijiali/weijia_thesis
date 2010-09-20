load exe.dat;
figure1 = bar(exe,'group');

legend('CSOA','ICSOA','Location','NorthWest');

xlabel({'Test Case Number (M-D-1 ~ M-D-5, R-D-1 ~ R-D-3)'},'fontsize',14);
ylabel({'Execution Overhead (# of instructions)'},'fontsize',14);
colormap(gray);
%title({'Code Quality Comparison between',' recompile and incremental-compile','(Single address register)'},'fontsize',16, 'FontWeight','bold');
saveas(gcf,'../../figures/exe.eps','eps');
