function getFigure(figureHandel,lgdOutside,limitExpansion)
% =========================================================================
% Function description: function that make matlab plots better and makes
% them in accordance to the LaTeX format. Adjustable parameters can be
% changed below. Boolean conditions are used to inidcate the useage of 
% lgdOutside and limitExpansion. The former increases the the figure width
% to accompany a legend placed on the right. The latter increases the
% bounds of the axis to show datapoints more clearly. Place the function in
% the same folder as the matlab script, create figureHandel and run code.
% Version:      2
% Written by:   Niels Kuipers
% 
% Parameters explained:
%   figureHandel: Figure properties
%   lgdOutside (Y1/n0): If the legend is placed outside of the image this can
%       be used to reshape the graph, otherwise it can be used to increase the
%       width of a figure if required. 
%   limitExpansion: Increases the bounds by a certain percentage.
% 
% Better colors:
% 231,51,66 	red
% 19,166,136	turquoise 
% 16,124,161	Darkish blue 
% 19,166,136	medium green 
% 66,95,174		Purple blue 
% 222,201,17	Darkish yellow
% 242,54,109	Pink
% 4,60,77		Dark blue 
% 5,133,168		Medium blue 
% 230,58,33		Orange
% 225,64,79		light red
% 124,176,207	lightish blue
% 244,68,33		Red light
% 50,130,188	Nice blue 
% 255,146,82	Light orange
% 
% Good 4 color scheme 
% 193,39,37		red 
% 255,165,130	Skin 
% 139,207,227 	light blue 
% 26,101,179	dark blue
% =========================================================================

    % Adjustable parameters 
    scaleFactor = 1.25; % Increases spacing on the right side (default 1)
    xMinExpansion = 0.05;  % Expand left x limit (default 0)
    yMinExpansion = 0.05;  % Expand right x limit (default 0)
    xMaxExpansion = 0.05; % Expand left y limit (default 0)
    yMaxExpansion = 0.05; % Expand right y limit (default 0)
    
    % General altercations
    set(gcf,'PaperSize',[21 29.7],'InvertHardcopy','off','Color',[1 1 1])
    set(gca,'lineWidth',2','Fontsize',20,'XminorTick','on', 'FontName','AvantGarde')
    set(findall(figureHandel,'-property','Interpreter'),'Interpreter','latex')
    set(findall(figureHandel,'-property','TickLabelInterpreter'),'TickLabelInterpreter','latex')
    set(findall(gcf,'Type','Marker'),'MarkerSize',5)
    
    % User specific altercations 
    if lgdOutside == 1
        pos = get(gcf, 'Position');
        width = pos(3);
        height = pos(4);
        newWidth = width * scaleFactor;
        set(gcf, 'Position', [pos(1), pos(2), newWidth, height]);
    end
    if limitExpansion == 1
        xLimit = xlim(gca);
        yLimit = ylim(gca);
        xLength = diff(xLimit);
        yLength = diff(yLimit);
        xLimitExpanded = [xLimit(1)- xMinExpansion*xLength, xLimit(2) + xMaxExpansion*xLength];
        yLimitExpanded = [yLimit(1)- yMinExpansion*yLength, yLimit(2) + yMaxExpansion*yLength];
        xlim(gca, xLimitExpanded);
        ylim(gca, yLimitExpanded);
    end
end