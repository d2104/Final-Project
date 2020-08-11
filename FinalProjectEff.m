
C0 = 0.6; %C0, C1, and C2 are coefficients used to solve for Power Loss
C1 = .02;
C2 = .0015;
pIn = zeros(1,126); %The range for Power Input
for k = 2:126
    pIn(k) = pIn(k-1) + 1;
end

pLoss = pIn;
for i = 1:126 
    P = i;%Sets value of P so that it increases with the range of pLoss
    pLoss(P) = C0 + C1*P + C2*P.^2; %Equation for Power Loss
end

pOut = zeros(1,126);
for j = 1:126 %Subtracts powerLoss from its corresponding element of Power Input
    pOut(j) = pIn(j) - pLoss(j); % Equation for Power Output using Power Input and Power Loss
end

Eff = zeros(1,126);
for h = 1:126
    Eff(h) = (pOut(h))/(pIn(h)); %Equation for Efficiency
end

type = 'p';
title = 'Efficiency Plot';
xLabel = 'Power Input';
yLabel = 'Efficiency';

funFinalProjectEff(pIn,Eff,type,title,xLabel,yLabel);
legend('Efficiency');

