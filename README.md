# Final Project
 Plotting Efficiency and Endurance


FinalProjectEff and funFinalProjectEff contain the code for the Efficiency Plot.
Similarly, FinalProjectEnd and funFinalProjectEnd contain the code for the Endurance Plot.


I left comments throughout my codes that should be able to explain my math and reasoning. The comments also define any variables or coefficients used. 


The following set of variables, equations, and values were used to create the Efficiency Plot:

Power Loss: pLoss = C0 + C1P + C2P^2 , where C0, C1, and C2 are coefficients of P (Power)

C0 = 0.6

C1 = 0.02

C2 = 0.0015

Power Output: pOut = pIn - pLoss , where pIn is Power Input

Efficiency: Eff = pOut/pIN over the range [0,125] for pIN


The following set of variables, equations, and values were used to create the Endurance Plot:

Fuel Flow: Rf = P/(Eg * Te) , where P, Eg, and Te are the variables Engine Power, Gasoline Energy, and Thermal Efficiency, respectively.

Endurace: X = Cf/Rf , where Cf is Fuel Capacity

The range of Cf was [25,100]




