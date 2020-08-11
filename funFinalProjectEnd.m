function[] = funFinalProjectEnd(Cf,X,type,t,xLabel,yLabel)
    [r,c] = size(Cf);
    
    figure;
    for i = 1:c
        hold on;
           plot(Cf,X,type);
    end
    
    hold off;
    title(t);
    xlabel(xLabel);
    ylabel(yLabel);
    axis([25,100,0,10])

end