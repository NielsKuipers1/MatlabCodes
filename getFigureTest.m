close all;
clear;
clc;

% =======================================================
% Script to generate and save a sine wave plot with specified color scheme.
% Version: 1
% Written by: Niels Kuipers
% =======================================================

% addpath('<path_to_folder>') % Add this to a current directory

folderName = 'figures'; % Folder name to store figures
figOn = 'on'; % Toggle to show figures

% Arbitrary dataset
x = 1:0.1:10;
y = sin(x);

fileName = 'plotfigure_test'; % Name of the plot file
color = getColors([1, 6, 3]); % Get color scheme

figureHandel = figure('Visible', figOn); % Initialize figure
hold on;
plot(x, y, 'Color', color(2, :), 'LineWidth', 1.5) % Plot figure with specified color
xlabel('t [$s$]') % X-axis label
ylabel('y [$ms^{-2}$]') % Y-axis label
title('') % Title (empty)
% Legend
lgd = legend('data');
lgd.Box = 'off'; % Remove box around legend
lgd.Location = 'northeast'; % Set legend location
getFigure(figureHandel) % Converts figure to be a LaTeX figure
axis equal; % Set equal scaling for both axes
saveFigure(folderName, fileName, 'on') % Save figure
hold off; % Release the figure
