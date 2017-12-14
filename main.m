clc; clear;
mInf = 2.3;  % Maccchaaa Number
pInf = 4.7;  % Freestream static pressure
gamma = 1.4; % Gamma
alpha = 17;  % Angle of attack
beta = 5;    % Geometric parameter of the diamond airfoil
b = 10;      % 1/2 Chord
numofIts = 1;
initialStepSize = 1;
initialAlphaBounds = [1, 30];
initialBetaBounds = [1, 30];




%Calculate the pressures at each station
for iteration = 1:numofIts
    allAnswers = table();
    bestCase = zeros(1,9);
    iteration
    stepSize = initialStepSize * 10^(-2*(iteration-1));
    
    if iteration == 1
        alphaBounds = initialAlphaBounds;
        betaBounds = initialBetaBounds;
    else
        alphaBounds = [(1-.01)*bestCase(4), (1+.01)*bestCase(4)];
        betaBounds = [(1-.01)*bestCase(5), (1+.01)*bestCase(5)];
    end
    
    n = 1;
    
    for alpha = alphaBounds(1):stepSize:alphaBounds(2)
     
        for beta = betaBounds(1):stepSize:betaBounds(2)
            
            %global bestCase;
            %global allAnswers;
            
            pressures = findPressures(mInf, pInf, alpha, beta, gamma);
            [lift, drag] = findLiftDrag(pressures, alpha, beta, b);
            ld = lift/drag;
            
            answer = [ld, lift, drag, alpha, beta];
            answer = horzcat(answer, pressures);
            allAnswers;
            %answerSpecific = allAnswers
            %allAnswers(n,1:9) = [answer];
            inanswer = num2cell(answer);
            allAnswers(n,1:9) = [inanswer];
            
            if answer(1) > bestCase(1)
                bestCase = answer;
            end
            n = n+1;
        end
    end
end

allAnswers;
bestCase;
%Find lift and drag per unit span




