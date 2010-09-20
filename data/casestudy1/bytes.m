load bytes
figure1 = bar(bytes,'group');
xlabel('Test Case Number (R-G-1 ~ R-G-6)','fontsize',14);
ylabel('Transmission Overhead (KB)','fontsize',14);
legend1 = legend('GCC','UCC');
set(legend1,'Location','Northwest');
colormap(gray);
saveas(gcf,'../../figures/bytes.eps','eps');
