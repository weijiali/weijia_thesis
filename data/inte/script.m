load script.dat
figure1 = bar(script,'group');
xlabel('Test Case Number (M-G-14 ~ M-G-19)','fontsize',14);
ylabel('Diff_{script\_size} (Bytes)','fontsize',14);
colormap(gray);
ylim([0,300]);
legend1 = legend('GCC','UCC-RA','UCC-DA','UCC-integration','Location','NorthWest');
saveas(gcf,'../../figures/inte-upd.eps','eps');
