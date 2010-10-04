load energy.dat
x=energy(:,1);
y1=energy(:,2);
y2=energy(:,3);
y3=energy(:,4);
y4=energy(:,5);
y5=energy(:,6);
figure1=plot(x,y1,'--',x,y2,'-*',x,y3,'-.',x,y4,'-x',x,y5,'-+','LineWidth',2);
colormap(gray);
xlabel('Execution Number','fontsize',30);
ylabel('Energy Savings (mJ)','fontsize',30);
legend('M-D-1','M-D-2','M-D-3','M-D-4','M-D-5','fontsize',30);
saveas(gcf,'../../figures/da-energy.eps','eps');
