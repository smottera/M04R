%Electric Roller Skates
%Mechanical Calculations
clc;
d = 0.065; %diameter of the spherical wheel in m
circumfrence = pi * d; %distance per rotation of wheel
gear_ratio = 11/53 ;
battery_voltage = 3.7 * 10;
motor_kv  = 800; 
motor_rpm = motor_kv * battery_voltage; 
wheel_rpm = motor_rpm * gear_ratio;
velocity = wheel_rpm * 3.6 * (circumfrence / 60)
%motor + esc combo (2x) = 700 USD. 