
C0 = 0.6; %C0, C1, and C2 are coefficients used to solve for Power Loss
C1 = .02;
C2 = .0015;
pIn = zeros(1,126); %Template for the Power Input array/data
for k = 2:126
    pIn(k) = pIn(k-1) + 1; %Increases the value of each element of pIn by 1 until it gets to the value 125, effectively setting the range equal to 0:125
end

pLoss = pIn; %Sets Power Loss array equal to the pIn array
for i = 1:126 
    P = i; %Sets value of P so that it increases with the range of pLoss
    pLoss(P) = C0 + C1*P + C2*P.^2; %Equation for Power Loss
end

pOut = zeros(1,126); %Template for Power Output array/data
for j = 1:126 
    pOut(j) = pIn(j) - pLoss(j); %Subtracts pLoss from its corresponding element of pIn
end

Eff = zeros(1,126); %Template for Efficiency array/data
for h = 1:126
    Eff(h) = (pOut(h))/(pIn(h)); %Equation for Efficiency
end

type = 'p';
title = 'Efficiency Plot';
xLabel = 'Power Input';
yLabel = 'Efficiency';

funFinalProjectEff(pIn,Eff,type,title,xLabel,yLabel);
legend('Efficiency');

