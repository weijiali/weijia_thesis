load exe2.dat;
figure1 = bar(exe2,'group');

legend('CSOA','ICSOA',2);

xlabel({'Test Case Number (R-D-1 ~ R-D-3)'},'fontsize',14);
ylabel({'Execution Overhead (# of instructions)'},'fontsize',14);
colormap(gray);
%title({'Code Quality Comparison between',' recompile and incremental-compile','(Single address register)'},'fontsize',16, 'FontWeight','bold');
saveas(gcf,'../../figures/da-exe2.eps','eps');
