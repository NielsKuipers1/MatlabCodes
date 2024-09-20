MATlib: 
	Folder with matlab functions that can be added to the working 
	directory 

Usage: 
1. In the terminal of the /MATlib location type to find the folder location 
	pwd
2. In the main.m of the current working directory add the following line
	addpath('</path_to_folder>')
The functions in the library can be called in the script. 


Overview functions:

getFigure(figureHandel)
	This function plots the figure in the style of latex

saveFigure('folder','fileName')
	saves figure in the /figures folder unless a different folder is given

getColors(arrayColor)
    Returns colors in array form to be used in plotting for loops
