%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Function Definition Line: (repeat line 1 as a comment here)
%  
%
%  Inputs: list each input argument variable name and 
%          comment with units (as appropriate):
%  1. temp [degree (C)]
%  2. Composition_B [% Composition of Solid B]
%  Outputs: list each output argument variable name and 
%           comment with units (as appropriate):
%
%  Function Description: This function helps establish the phase of a
%  mixture of solids/compounds, given the temperature and composition of B.
%  
%  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Fall 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Samanth Mottera Srinivas, smottera@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  
%
%  Section #: 001     Team #: 18
%
%  Assignment #: 7
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function[] = PS07_PhaseDiagram_smottera(temp, Composition_B)

% --- INPUTS/INITIALIZATIONS ---
t_min = 0; %Valid temperature range min (degree C)
t_max = 150; %Valid temperature range max (degree C)
CompositionB_maximum = 100; %Valid percent B range max
CompositionB_minimum = 0; %Valid percent B range min
CompositionB_EutecticPoint = 60; %percentage of B at Eutectic Point 
temperature_Eutectic = 40; %Temperature at Eutectic Point

%Intialization of flag and phase variables
phase = 'Cannot be determined';
validity = 1;  
counter_2 = 1; %counter variable for the while loop

% --- CALCULATIONS & OUTPUT ---
fprintf('Composition: %0.1f percent B.\n', Composition_B);
temp = temp + 2;
while(counter_2 < 5)
    temp = temp - 2;
    if (temp > t_max || temp < t_min) || (Composition_B > CompositionB_maximum || Composition_B < CompositionB_minimum)
        %invalid inputs
        fprintf('Inputs: %0.2f degree C & %0.2f percent B.\n', temp, Composition_B)
        fprintf('\nInvalid temperature or percent composition of B.\n')
        fprintf('\nTemperature has to be between %i & %i degree C.\n', t_min, t_max);
        fprintf('\nComposition of B has to be between %i & %i percent.\n', CompositionB_minimum, CompositionB_maximum);
        validity = 0; % Set validation flag to false
        counter_2 = 5;
    else  %valid inputs

        if temp == temperature_Eutectic && Composition_B == CompositionB_EutecticPoint
            %if true at Eutectic Point
            phase = 'Eutectic Point';

        elseif Composition_B < CompositionB_EutecticPoint 
            %if true then test cases for % B below Eutectic Pt.
            y1 = -4 / 3 * Composition_B + 120;
            if temp > y1  
                phase = 'Liquid'; %above line
            elseif temp < y1  
                phase = 'Solid A + Compound AB'; %below line
            else 
                phase = 'Liquid + Solid A + Compound AB'; %Temperature == y1 
            end

        else  
            %if true then test cases for percent B above or equal to Eutectic
            %Pt.
            y2 = 5/4 * Composition_B - 35;
            if temp > y2 
                phase = 'Liquid'; %above line
            elseif temp  < y2 
                phase = 'Solid B + Compound AB'; %below line
            else 
                phase = 'Liquid + Solid B + Compound AB'; %Temperature == y2 
            end

        end
    end
    counter_2 = counter_2 + 1;

    if validity == 1
        fprintf('Temperature: %0.1f deg C, Phase: %s, Cooling Time: %0.1f min\n',temp, phase, (counter_2 - 2));

    end
end


% --- RESULTS ----
% PS07_PhaseDiagram_smottera(141,51)
% Composition: 51.0 percent B.
% Temperature: 141.0 deg C, Phase: Liquid, Cooling Time: 0.0 min
% Temperature: 139.0 deg C, Phase: Liquid, Cooling Time: 1.0 min
% Temperature: 137.0 deg C, Phase: Liquid, Cooling Time: 2.0 min
% Temperature: 135.0 deg C, Phase: Liquid, Cooling Time: 3.0 min

% PS07_PhaseDiagram_smottera(80,30)
% Composition: 30.0 percent B.
% Temperature: 80.0 deg C, Phase: Liquid + Solid A + Compound AB, Cooling Time: 0.0 min
% Temperature: 78.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 1.0 min
% Temperature: 76.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 2.0 min
% Temperature: 74.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 3.0 min

% PS07_PhaseDiagram_smottera(29,54)
% Composition: 54.0 percent B.
% Temperature: 29.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 0.0 min
% Temperature: 27.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 1.0 min
% Temperature: 25.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 2.0 min
% Temperature: 23.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 3.0 min

% PS07_PhaseDiagram_smottera(103,79)
% Composition: 79.0 percent B.
% Temperature: 103.0 deg C, Phase: Liquid, Cooling Time: 0.0 min
% Temperature: 101.0 deg C, Phase: Liquid, Cooling Time: 1.0 min
% Temperature: 99.0 deg C, Phase: Liquid, Cooling Time: 2.0 min
% Temperature: 97.0 deg C, Phase: Liquid, Cooling Time: 3.0 min

% Composition: 64.0 percent B.
% Inputs: 199.00 degree C & 64.00 percent B.
% 
% Invalid temperature or percent composition of B.
% 
% Temperature has to be between 0 & 150 degree C.
% 
% Composition of B has to be between 0 & 100 percent.

% Composition: 426.0 percent B.
% Inputs: 56.00 degree C & 426.00 percent B.
% 
% Invalid temperature or percent composition of B.
% 
% Temperature has to be between 0 & 150 degree C.
% 
% Composition of B has to be between 0 & 100 percent.

% PS07_PhaseDiagram_smottera(25,67)
% Composition: 67.0 percent B.
% Temperature: 25.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 0.0 min
% Temperature: 23.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 1.0 min
% Temperature: 21.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 2.0 min
% Temperature: 19.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 3.0 min

% PS07_PhaseDiagram_smottera(65,83)
% Composition: 83.0 percent B.
% Temperature: 65.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 0.0 min
% Temperature: 63.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 1.0 min
% Temperature: 61.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 2.0 min
% Temperature: 59.0 deg C, Phase: Solid B + Compound AB, Cooling Time: 3.0 min

% Composition: 50.0 percent B.
% Temperature: 50.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 0.0 min
% Temperature: 48.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 1.0 min
% Temperature: 46.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 2.0 min
% Temperature: 44.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 3.0 min

% PS07_PhaseDiagram_smottera(41,59)
% Composition: 59.0 percent B.
% Temperature: 41.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 0.0 min
% Temperature: 39.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 1.0 min
% Temperature: 37.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 2.0 min
% Temperature: 35.0 deg C, Phase: Solid A + Compound AB, Cooling Time: 3.0 min