load time
figure1 = bar(time,'group');
xlabel('Test Case Number (R-G-1 ~ R-G-6)','fontsize',14);
ylabel('Duration Time (s)','fontsize',14);
legend1 = legend('GCC','UCC');
set(legend1,'Location','Northwest');
colormap(gray);
saveas(gcf,'../../figures/time.eps','eps');
