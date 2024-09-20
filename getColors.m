function colors = getColors(arrayColor)
% =======================================================
% Function to get specified colors from predefined color schemes.
% Version:      1
% Written by:   Niels Kuipers
%
% Parameters:
%   arrayColor - array of indices to select colors from the color scheme
% =======================================================
    % Define the main color scheme (scaled to 0-1 range)
    colorSchemes = [
        231, 51, 66;     % Red
        19, 166, 136;    % Turquoise
        16, 124, 161;    % Darkish blue
        66, 95, 174;     % Purple blue
        222, 201, 17;    % Darkish yellow
        242, 54, 109;    % Pink
        4, 60, 77;       % Dark blue
        5, 133, 168;     % Medium blue
        230, 58, 33;     % Orange
        225, 64, 79;     % Light red
        124, 176, 207;   % Lightish blue
        244, 68, 33;     % Red light
        50, 130, 188;    % Nice blue
        255, 146, 82;    % Light orange
        193, 39, 37;     % Red (Good 4 color scheme)
        255, 165, 130;   % Skin (Good 4 color scheme)
        139, 207, 227;   % Light blue (Good 4 color scheme)
        26, 101, 179;    % Dark blue (Good 4 color scheme)
	34, 139, 34; 	 % Forest green 
	186, 6, 108;	 % Raspberry
    30, 144, 255;
    65, 105, 225;
    29,124,190;
    200, 50, 0
    ] / 256;

    % Define the good 4 color scheme (scaled to 0-1 range)
    good4Colors = [
        193, 39, 37;    % Red
        255, 165, 130;  % Skin
        139, 207, 227;  % Light blue
        26, 101, 179    % Dark blue
    ] / 255;

    % Initialize the output array
    colors = zeros(length(arrayColor), 3);

    % Assign colors based on the input indices
    for i = 1:length(arrayColor)
        colors(i, :) = colorSchemes(arrayColor(i), :);
    end
end
