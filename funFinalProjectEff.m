function[] = funFinalProjectEff(pIn,Eff,type,t,xLabel,yLabel)
    [r,c] = size(pIn);

    figure;
    for i = 1:c
     hold on;
        plot(pIn,Eff,type);
    end

    hold off;
    title(t);
    xlabel(xLabel);
    ylabel(yLabel);
    axis([0,125,0,1])

end