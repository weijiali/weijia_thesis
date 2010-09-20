load plan.dat;

x = plan(:,1);
y = plan(:,2);


figure1 = figure('XVisual',...
    '0x23 (TrueColor, depth 24, RGB mask 0xff0000 0xff00 0x00ff)');

axes('Parent',figure1,'XGrid','on','YGrid','on');
box('on');
hold('all');

ytls = ['Aug 09';
	'Sep 09';
	'Oct 09';
	'Nov 09';
	'Dec 09';
	'Jan 10';
	'Feb 10';
	'Mar 10';
	'Apr 10'];
set(gca,'YTickLabel',ytls);

xtls = ['M0';
	'M1';
	'M2';
	'M3';
	'M4';
	'M5';
	'M6'];	  
set(gca,'XTickLabel',xtls);

ylabel({'Months'},'fontsize',18);
xlabel({'Milestones'},'fontsize',18);

plot(y,x,'Color',[0 0 1],'LineWidth',2);


set(gca,'FontSize',14);

saveas(gcf,'plan.eps','eps');

