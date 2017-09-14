t = [-2:0.01:4]; %% x-axis variable with specified interval
f1 = ramp(t) - ramp(t-2) -ustep(t-2); %% y-axis function given by the problem
plot(t,f1,'LineWidth',2), grid, xlabel('t'), ylabel('f_1(t)') %