load upd
figure1 = bar(upd,'group');
xlabel('Test Case Number (M-G-1 ~ M-G-12)','fontsize',14);
ylabel('Diff_{script\_size} (Bytes)','fontsize',14);
colormap(gray);
legend1 = legend('GCC-RA','UCC-RA','Location','NorthWest');
saveas(gcf,'../../figures/upd.eps','eps');
