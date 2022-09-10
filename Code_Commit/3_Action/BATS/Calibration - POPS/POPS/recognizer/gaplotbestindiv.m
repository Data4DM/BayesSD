function state = gaplotbestindiv(options,state,flag)
%GAPLOTBESTINDIV Plots the best individual.
%   STATE = GAPLOTBESTINDIV(OPTIONS,STATE,FLAG) plots the best 
%   individual's genome as a histogram, with the number of bins
%   in the histogram equal to the length of the genome.
%
%   Example:
%    Create an options structure that uses GAPLOTBESTINDIV
%    as the plot function
%     options = gaoptimset('PlotFcns',@gaplotbestindiv);

%   Copyright 2003-2004 The MathWorks, Inc. 
%   $Revision: 1.11.4.2 $  $Date: 2004/08/20 19:48:25 $

switch flag
    case 'init'
        GenomeLength = size(state.Population,2);
        [unused,i] = min(state.Score);
        % Set up the plot
        set(gca,'xlim',[1,options.Generations],'ylim',[0,20]);
        hold on;
        xlabel Generation
        title('Change in Best Fitness Value')
    end
        
        h = bar(double(state.Population(i,:)));
        set(h,'edgecolor','none','Tag','gaplotbestindiv')
        set(gca,'xlim',[0,1 + GenomeLength])
        title('Current Best Individual','interp','none')
        xlabel(['Number of variables (',int2str(GenomeLength),')'],'interp','none');
        ylabel('Current best individual','interp','none');

    case 'iter'
        [unused,i] = min(state.Score);
        h = findobj(get(gca,'Children'),'Tag','gaplotbestindiv');
        set(h,'Ydata',double(state.Population(i,:)));
end


