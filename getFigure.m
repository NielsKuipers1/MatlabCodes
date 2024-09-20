function getFigure(figureHandel)
% =========================================================================
% Function description: function that make matlab plots better and makes
% them in accordance to the LaTeX format. In the main code, each line can
% be overwritten after the function is called. 
% Version:      1
% Written by:   Niels Kuipers
% 
% Parameters explained:
%   figureHandel: Figure properties
% =========================================================================
    set(gcf,'PaperSize',[21 29.7],'InvertHardcopy','off','Color',[1 1 1])
    set(gca,'lineWidth',1','Fontsize',12,'XminorTick','on', 'FontName','AvantGarde')
    set(findall(figureHandel,'-property','Interpreter'),'Interpreter','latex')
    set(findall(figureHandel,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
    set(findall(gcf,'Type','Marker'),'MarkerSize',5)
    box on;
end