%function time_freq_plot(y,time,Y,freq)
%fs = 2^13;
%time = 0:(1/fs):5; 

% L = length(y);      
% 
% Y = fft(y);             
% 
% P2 = abs(Y/L);
% P1 = P2(1:L/2+1);
% P1(2:end-1) = 2*P1(2:end-1);
% 
% freq = fs*(0:(L/2))/L; 

subplot(2,1,1);
plot(time,y);
xlabel('Time(sec)');
ylabel('Function y(t)');
subplot(2,1,2);
plot(freq,Y);
xlabel('Frequency, f (Hz)');
ylabel('Magnitude of P1');
title('Subplots');