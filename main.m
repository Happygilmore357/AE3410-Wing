clc; clear all; clear bestCase

global half_Chord

mInf = 2.3;  % Maccchaaa Number
pInf = 4.7;  % Freestream static pressure
gamma = 1.4; % Gamma
alpha = 17;  % Angle of attack
beta = 5;    % Geometric parameter of the diamond airfoil
half_Chord = 9;      % 1/2 Chord
numofIts = 2; % Number of times to refine grain size
initialStepSize = .75; % Intiial step size for the alpha and beta iterations
initialAlphaBounds = [5, 20]; % Initial bounds to iterate over alpha
initialBetaBounds = [5, 30];  % Initial bounds to iterate over beta




%Iterate through alphas and betas, refining the grain size
for iteration = 1:numofIts
    clear allAnswers;
    allAnswers = table();
    %bestCase = zeros(1,9);
    iteration;
    stepSize = initialStepSize * 10^(-2*(iteration-1));
    
    % Initialize values if the first iteration
    if iteration == 1
        bestCase = zeros(1,9);
        alphaBounds = initialAlphaBounds;
        betaBounds = initialBetaBounds;
        
    % Refine the grain size if not the first iteration
    else
        alphaBounds = [(1-.01)*bestCase(4), (1+.01)*bestCase(4)];
        betaBounds = [(1-.01)*bestCase(5), (1+.01)*bestCase(5)];
        bestCase = zeros(1,9);
    end
    
    % Index for adding values to aggregate table
    n = 1;
    
    % Iterate through alphas and betas
    for alpha = alphaBounds(1):stepSize:alphaBounds(2)
     
        for beta = betaBounds(1):stepSize:betaBounds(2)
            
            % Find pressures, then lift:drag, then add to aggreagte table
            pressures = findPressures(mInf, pInf, alpha, beta, gamma);
            [lift, drag] = findLiftDrag(pressures, alpha, beta, half_Chord);
            ld = lift/drag;
            answer = [ld, lift, drag, alpha, beta];
            answer = horzcat(answer, pressures);

            inanswer = num2cell(answer);
            allAnswers(n,1:9) = [inanswer];
            
            if ((answer(1) > bestCase(1)) && (answer(1) < 30) && (answer(2) > 0) && (answer(3) > 0) && (answer(4) > 0) && (answer(5) > 0))
                
                bestCase = answer;
                
            end
            n = n+1;
        end
    end
end

disp(findGeometry(bestCase));

config_1 = bestCase;

% Vary angle of attack to get the proper lift:drag for supercruise
while ld > 9
    config_1(4) = config_1(4)+initialStepSize*0.1;
    [lift, drag] = findLiftDrag([config_1(1,6:9)], config_1(4), config_1(5), half_Chord);
    ld = lift/drag;
    config_1(1,1:3) = [ld, lift, drag];
end

disp(config_1);





