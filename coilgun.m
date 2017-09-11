%calculations for coil gun
rho = 1.72E-8;
length = 0;
area = 0; 
gauge = 0;
current = 0;
voltage = 0;
resistance = 0;
power_1 = (current*current) * resistance; 
power_2 = (voltage*voltage) / resistance; 
inductance = 0;
%to maximize electromagnetic force and projectile velocity 
%increase current, discharge voltage, coil turns
%decrease coil resistance,
%decrease projectile area, increase aerodynamics
%decrease projectile mass, increase magnetic property 