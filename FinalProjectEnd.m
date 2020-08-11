P = 298; %Engine Power
Eg = 8.8; %Gasoline Energy
Te = .25; %Thermal Efficiency
Rf = (P)/(Eg * Te); %Equation for Fuel Flow
Cf = zeros(1,76); %Setting up range of Fuel Capacity
for i = 1:76
    if i == 1
        Cf(i) = 25; %Sets 25 as the minimum of Cf 
    else
        Cf(i) = Cf(i - 1) + 1; %Increases range of Cf by 1 until it gets to 100
    end
end
X = Cf/Rf; %Equation for Endurance

type = 'o';
title = 'Endurance Plot';
xLabel = 'Fuel Capacity';
yLabel = 'Endurance';

funFinalProjectEff(Cf,X,type,title,xLabel,yLabel);
legend('Endurance');