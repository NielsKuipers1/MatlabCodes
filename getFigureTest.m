close all;
clear;
clc; 

% getFigure example script
x=0:0.05:1;
y=sin(x);

% Regular plot
figureHandel = figure; 
plot(x,y,'o','MarkerSize',10,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[50,130,188]/256,'LineWidth',1.5) % Data plot 
hold on
plot(x,y,'color',[50,130,188]/256) % 'Best fit' example
title('')
xlabel('$x$')
ylabel('$y$')
lgd = legend('$sin(x)$');
lgd.Orientation = 'vertical';
lgd.Box = 'off';
lgd.FontSize = 17;
lgd.Location = 'northwest';
getFigure(figureHandel,0,0)
hold off

% LogLog scale
figureHandel = figure; 
loglog(x,y,'o','MarkerSize',10,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[19,166,136]/256,'LineWidth',1.5) % Data plot 
hold on
loglog(x,y,'color',[19,166,136]/256) % 'Best fit' example
title('')
xlabel('$x$')
ylabel('$y$')
lgd = legend('$sin(x)$');
lgd.Orientation = 'vertical';
lgd.Box = 'off';
lgd.FontSize = 17;
lgd.Location = 'northwest';
getFigure(figureHandel,0,0)
hold off 

% Legend on the outside 
figureHandel = figure; 
plot(x,y,'o','MarkerSize',10,'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[230,58,33]/256,'LineWidth',1.5) % Data plot 
hold on
plot(x,y,'color',[230,58,33]/256) % 'Best fit' example
title('')
xlabel('$x$')
ylabel('$y$')
lgd = legend('$sin(x)$');
lgd.Orientation = 'vertical';
lgd.Box = 'off';
lgd.FontSize = 17;
lgd.Location = 'eastoutside';
getFigure(figureHandel,1,0)
hold off
