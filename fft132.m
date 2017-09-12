function [P1, freq] = fft132(y, fs)

% function [P1, freq] = fft132(y, fs)
%
% INPUTS
% y is the time-domain expression whose FFT is sought
% fs is the sampling rate used to create the time-domain expression
%       for y
%
% OUTPUTS
% P is the frequency spectrum for the time-domain function y
% freq is the frequency scale used for plotting P
%
% USAGE
% This function takes a time-domain expression y created using time
% step (1/fs) and creates the frequency-domain representation of it
% using the built-in Matlab function fft.
%
% See also fft.

L = length(y);          % length of the vector (used in the calcs below)

Y = fft(y);             % the built-in Matlab function for FFT

% The details of these calculations don't matter at all right now.
% In brief: we are doing various kinds of scaling of the data so that the
% magnitude and frequency of the result are correct.
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

% here we define the frequency scale
freq = fs*(0:(L/2))/L;     % frequency scale