load prof
figure1 = bar(prof,'group');
xlabel('Test Case Number (M-G-1 ~ M-G-12)','fontsize',14);
ylabel('Diff_{cycle}','fontsize',14);
colormap(gray);
legend1 = legend('GCC-RA','UCC-RA');
saveas(gcf,'../../figures/prof.eps','eps');
