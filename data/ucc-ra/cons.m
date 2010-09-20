load cons.dat
inst_num = cons(:,1);
cons_num = cons(:,2);
scatter(inst_num,cons_num,'.','k');
xlabel('Instruction Number','fontsize',12);
ylabel('Constraint Number','fontsize',12);
saveas(gcf,'../../figures/inst-cons.eps','eps');
