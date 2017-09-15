function[] = M2_Algorithm1_001_18()
%----Setting up Inputs-------
noisy = csvread('M2_Dataset_CleanCalibration.txt'); 
noisy_data = noisy(:,2); %Extracting the temperature column from the data
time = noisy(:,1); %Extracting the time column from the data


%----Calulation of Slopes at all possible points------
counter_1 = 1;
while(counter_1 < 200)
    noisy_slope(counter_1) = ((noisy_data(counter_1 + 1) - noisy_data(counter_1)))/(time(counter_1 + 1) - time(counter_1));
    counter_1 = counter_1 + 1; 
end

ts_noisy = find(noisy_slope == max(noisy_slope)); %Returns the index of highest slope
ts = time(ts_noisy); %Time (in seconds)
ys = noisy_data(ts_noisy); %Degree C

%Actual Data is data exclusive of delay 
plot(time,noisy_data,'g-');
xlabel('Time');
ylabel('Temperature(Degree C)');
title('Thermocouple Temp vs. Time');
text(ts, ys, '*t_s');
text(0, ys, '*y_s');
hold on;
plot(ts, ys, '*g');
grid on;

%Finding the median of stable data points....
%twenty_percent is twenty percent of the last data points
counter_2 = (round(0.8 * length(noisy_data)));
counter_3 = 1;
while(counter_2 < length(noisy_data))
    twenty_percent(counter_3) = noisy_data(counter_2);
    counter_2 = counter_2 + 1;
    counter_3 = counter_3 + 1;
end
y_ss = mean(twenty_percent);

temp_t_ss = abs(noisy_data - y_ss);
index_temp_t_ss = find(temp_t_ss == min(abs(noisy_data - y_ss)));
t_ss = time(index_temp_t_ss);
text(t_ss, y_ss, '*y_s_s');

%Finding closest value of Tau
constant_1 = 1 - exp(-1); %=0.6321
y_tau = constant_1 * (y_ss - ys);
time_tau_t = abs(noisy_data - y_tau);
index_y_tau = find(time_tau_t == min(abs(noisy_data - y_tau)));
t_2 = time(index_y_tau);
tau = t_2 - ts;
text(t_2, y_tau, '*t_2 (63.21%)');



