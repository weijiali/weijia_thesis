load space
figure1 = bar(space,'group');
xlabel('Test Case Number (M-G-14 ~ M-G-19)','fontsize',14);
ylabel('Diff_{memory\_size} (Bytes)','fontsize',14);
ylim([0,90]);
colormap(gray);
legend1 = legend('GCC-DA','UCC-DA','Location','NorthWest');
saveas(gcf,'../../figures/stacksize.eps','eps');
