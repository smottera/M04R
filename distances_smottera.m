%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Function Definition Line: (repeat line 1 as a comment here)
%  
%
%  Inputs: list each input argument variable name and 
%          comment with units (as appropriate):
%  1. 
%  2.
%  ...
%
%  Outputs: list each output argument variable name and 
%           comment with units (as appropriate):
%  1. 
%  2.
%  ...
%
%  Function Description: We create histograms, find bin centers and
%  frequencies for data pertaining to golf ball shots
%  
%  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Fall 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Samanth Mottera Srinivas, smottera@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. 
%
%  Section #: 001     Team #:
%
%  Assignment #: 1
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; %clears the command window
clear; %clears the workspace
% --- INPUTS ---
load_data = load('golf_distance.txt') %imports data into the workspace
golf_distances = load_data(:, 1) %creates variable distance to store the appropriate value 

% --- CALCULATIONS ---
minimum = min(golf_distances) %minimum distance
maximum = max(golf_distances) %maximum distance
range = maximum - minimum  %maximum minus minimum for distance
mean = mean(golf_distances) %mean of distance
median = median(golf_distances) %median of distance
variance = var(golf_distances) %variance of distance
mode = mode(golf_distances) %mode of distance
std_dev = std(golf_distances) %standard deviance distance

% --- OUTPUTS ---
hist(golf_distances) %creates a histogram
[freq, centers] = hist (golf_distances) %stores the frequency and centers
title('Golf Distances')%descriptive title for the histogram
xlabel('Distance (yards)') %labels the x-axis
ylabel('Frequency') %labels the y-axis
no_of_bins = sqrt(max(find(golf_distances)))

% --- RESULTS ---
%freq = 2     6     6     6    19    14    13    19     9     6
%centers = 229.7250  235.5750  241.4250  247.2750  253.1250  258.9750  264.8250  270.6750  276.5250  282.3750
%Number of bins is equal to 10. (Rule of thumb: Square Root of datapoints)
 