load tradeoff.dat
x=tradeoff(:,1);
y1=tradeoff(:,2);
y2=tradeoff(:,3);
y3=tradeoff(:,4);
y4=tradeoff(:,5);
y5=tradeoff(:,6);
y6=tradeoff(:,7);
plot(x,y1,'--',x,y2,'-x',x,y3,'-+',x,y4,'-o',x,y5,'-*',x,y6,'-.','LineWidth',1);
colormap(gray);
ylim([0,120]);
set(gca,'XTick',[1:5]);
xlabel('Wasted Space (B)','fontsize',20);
ylabel('Saved Updates (%)','fontsize',20);
legend('M-G-14','M-G-15','M-G-16','M-G-17','M-G-18','M-G-19','Location','SouthEast');
saveas(gcf,'../../figures/spacetradeoff.eps','eps');
