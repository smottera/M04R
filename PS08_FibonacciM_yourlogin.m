function [F_matrix,F_lengths] = PS08_FibonacciM_yourlogin(f11,f12,c_inc,Mseq,delfmax)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Function Definition Line: [F_matrix,F_lengths] = PS08_FibonacciM_yourlogin(f11,f12,c_inc,Mseq,delfmax)
%  
%  Inputs: list each input argument variable name and 
%          comment with units (as appropriate):
%    1. f11 - the first value in the first Fubonacci sequence
%    2. f12 - the second value in the first Fubonacci sequence
%    3. c_inc - increment for each successive sequence's f11 and f12 values
%    4. Mseq - number of Fibonacci sequences to be created 
%    5. delfmax - maximum difference between f(n) and f(1) in a given
%                 sequence
%
%  Outputs: list each output argument variable name and 
%           comment with units (as appropriate):
%   1. F_matrix - matrix with Fibonacci sequences
%   2. F_lengths - vector of lengths of each sequence in 
%
%  Function Description: Generates user specified number of Fibonacci 
%  sequences, while the difference between the last and first values of 
%  each sequence is less than a user specified value. The first two 
%  values are increased by a user specified value each time a 
%  sequence is added to the matrix. 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es):
%  1. Name, login@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Name, login@purdue.edu
%
%  Section #:      Team #:
%
%  Assignment #: PS08 Problem 2
%
%  Academic Integrity Statement:
%
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ---- CALCULATIONS ----
F_matrix = []; % initializes the output Fibonacci sequences matrix
F_lengths = []; % initializes the output of Fibonacci sequence lengths

% Input validation checks:
% Checks that the start values are positive and the second is greater than first
if f11 < 0 | f12 < 0 | f11 >= f12 
    fprintf('Inputs provided:\n')
    fprintf('f11 = %i; f12 = %i \n',f11,f12) 
    fprintf('The first and second series values must be greater than zero. \n') 
    fprintf('The second series value must be greater than the first. \n')
   
% Checks for positive c and M values, and sufficiently large delfmax value
elseif c_inc <= 0 | Mseq <= 0 | delfmax <= (Mseq-1)*c_inc+(f12-f11)  %delfmax <= f12-f11
    fprintf('Inputs provided:\n')
    fprintf('f11 = %i; f12 = %i \n',f11,f12) 
    fprintf('c_inc = %i; Mseq = %i; delfmax = %i \n',c_inc,Mseq,delfmax)     
    fprintf('The increment for the starting values must be greater than zero. \n')
    fprintf('The number of sequences must be greater than zero. \n') 
    fprintf('The maximum difference must be greater than c_inc*(Mseq-1)*(f12-f11). \n') 

% Create the matrix of Fibonacci sequences
else
 
    % Loop that runs until M Fibonacci sequences have been generated
    for sequence = 1 : Mseq
        % store the first value in sequence
        F_matrix(sequence,1) = f11; 
        % store the second value in the sequence
        F_matrix(sequence,2) = f12;
        % compute the next value in the sequence
        Fseqnext = F_matrix(sequence,1)+F_matrix(sequence,2);
        % compute the difference between the new value and the first value
        diffFnF1 = Fseqnext-F_matrix(sequence,1);
        % initialize a counter for adding values to the sequence
        index=3;
        
        % As long as the nth-first value difference is less than delfmax
        while diffFnF1 < delfmax
            % add the next value in the sequence to the matrix
            F_matrix(sequence,index) = Fseqnext;
            index = index + 1;  % increment the counter
            % compute the next value in the sequence
            Fseqnext = F_matrix(sequence,index-2)+F_matrix(sequence,index-1);
            % compute the difference between the new value and the first value
            diffFnF1 = Fseqnext-F_matrix(sequence,1);
        end
        % Once all values are in the sequence
        % Compute the length of the sequence
        F_lengths(sequence,1) = sum(F_matrix(sequence,1:end)>0);
        % Increment the first and second value in the next sequence
        f11 = F_matrix(sequence,1)+c_inc;
        f12 = F_matrix(sequence,2)+c_inc;
            
    end
   
% ---- OUTPUT ----
% Output arguements assigned within for loop   

end

% ---- RESULTS ----

% Sample Case
% f1 = 4; f2 = 7; c=2; M=3; dfmax = 30;
% [Fseries,Flen] = PS08_FibonacciM_yourlogin(f1,f2,c,M,dfmax)
% Fseries =
%      4     7    11    18    29
%      6     9    15    24     0
%      8    11    19    30     0
% Flen =
%      5
%      4
%      4

% Case 1
% f1 = 2; f2 = 3; c=5; M=2; dfmax = 8;
% [Fseries,Flen] = PS08_FibonacciM_yourlogin(f1,f2,c,M,dfmax)
% Fseries =
%      2     3     5     8
%      7     8     0     0
% Flen =
%      4
%      2

% Case3 - invalid delfmax
% f1 = 2; f2 = 3; c=5; M=8; dfmax = 8;
% [Fseries,Flen] = PS08_FibonacciM_yourlogin(f1,f2,c,M,dfmax)
% Inputs provided:
% f11 = 2; f12 = 3 
% c_inc = 5; Mseq = 8; delfmax = 8 
% The increment for the starting values must be greater than zero. 
% The number of sequences must be greater than zero. 
% The maximum difference must be greater than c_inc*(Mseq-1)*(f12-f11). 
% Fseries =
%      []
% Flen =
%      []