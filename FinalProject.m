
C0 = 0.6; %C0, C1, and C2 are coefficients used to solve for Power Loss
C1 = .02;
C2 = .0015;
pIn = [0:125]; %The range for Power Input
pLoss = C0 + C1*P + C2*P.^2; %Equation for Power Loss
for i = 1:pIn %Sets value of P so that it increases with the range of pLoss
 P = i;
end

pOut = zeros(1,126);

for i = 1:126 %Subtracts powerLoss from its corresponding element of Power Input
    pOut(i) = pIn(i) - pLoss(i); % Equation for Power Output using Power Input and Power Loss
end
Efficiency = pOut/pIn; %Equation for Efficiency

type = 'p';
title = 'Efficiency Plot';
xLabel = 'Power Input';
yLabel = 'Efficiency';

funFinalProject(pIn,Efficiency,type,title,xLabel,yLabel);
legend('Efficiency');

