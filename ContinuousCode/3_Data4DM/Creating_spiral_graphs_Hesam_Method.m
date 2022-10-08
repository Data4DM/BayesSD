%Author: Ross Williams

%Note: Coloring Function still needs work or it does work and I don't know why my data is wonked.

%%%%Untested Assumptions/Potential Errors%%%
%What if a time series has a minimum not equal to 0. Unsure if I will need to adjust the code.
%I am not perfectly why I need to normalize velocities, but it definitely is needed.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%USER INPUTS%%%%%%%%%%%%%%%%%%%%%
subtract=5; %Define the Position of how many time steps forward you want your arrow to be pointed towards
Reducedata=1; %Define, of the total initial conditions you have, by what whole number factor do you want to reduce by. See "reducedarray" for how it affects the code
MaxTimeSeries1=1; %For timeseries 1, used to normalize arrow position as well as arrow "velocities"
MaxTimeSeries2=4000; %For timeseries 2, used to normalize arrow position as well as arrow "velocities"
xlabelname="Process Problems";  %This will the name for your time series 1 (x-axis), and remember it will be normalized
ylabelname="Normalized Resources for Production"; %This will the name for your time series 2 (y-axis), and remember it will be normalized
titlename="Phase Plot of Process Problems and Normalized Resources for Production";%This will
datafilename="current12.xlsx"; %It must be an xlsx file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%OPTIONAL USER INPUTS FOR GRAPH%%%
headWidth = 5;%Arrow head width
headLength = 9; %Arrow head length
LineLength = 0.01; %Put line lengths as close to 0 as possible. Else need to figure out how to normalize the line lengths,, 0.2
ArrowAlignment = 'head'; %Where do you want
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%COMMENT OUT TO SAVE TIME ONCE RUN ONCE%%%
%data=xlsread(datafilename); %Import data
%data(1,:)=[]; %Remove Time Step Row. ONLY RUN ONCE AND THEN COMMENT OUT THIS LINE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


howmuchdata=length(data); %Determines how much data you imported
array1=3:4:howmuchdata; %Array of rows for first time series
array2=4:4:howmuchdata; %Array of rows for 2nd time series
arraytot=cat(2,array1,array2); %concadenates arrays of rows for 1st and 2nd time series
arraytotsort=sort(arraytot); %sorts row order of concadenated time series



timeseries=data(arraytotsort,:); %Extracts only time series from data
timeseriescol2=timeseries(:,[1,subtract]); %Extracts two columns of interest from time series
diff=timeseriescol2(:,2)-timeseriescol2(:,1); %Takes difference 

array3=1:2:(howmuchdata/2); %Array of rows for 1st time series in "timeseries" matrix and "diff" matrix
array4=2:2:(howmuchdata/2); %Array of rows from 2nd time series in "timeseries" matrix and "diff" matrix


x=timeseries(array3,1); %x-axis previously known as the 1st time series
y=timeseries(array4,1); %y-axis previously known as the 2nd time series

diffx=diff(array3,1); %Find the difference in x-axis time series (x-axis previously known as the 1st time series)
diffy=diff(array4,1); %Find the difference in y-axis time series (y-axis previously known as the 2nd time series)


reducearray=1:Reducedata:(howmuchdata/4); %Takes a portion of all data that time series has. This line affects how many arrows come up. The max is the total amount of different initial conditions you have. 
x_final=x(reducearray,1)./MaxTimeSeries1; %Reduces x-data and normalizes x-series
y_final=y(reducearray,1)./MaxTimeSeries2; %Reduces y-data and normalizes y-series
diffx_final=diffx(reducearray,1)./MaxTimeSeries1; %Reduces diffx-data and normalizes diffx-series
diffy_final=diffy(reducearray,1)./MaxTimeSeries2; %Reduces diffy-data and normalizes diffy-series



%Plotting



%Plot with blue arrows that we don't really care about
figure('Position',[10 10 1000 600],'Color','w'); %Just creates a plot setup; I stole this line from the web.
scale=1; %Plays with size of arrows. TBH, just keep it at 1

quiv=quiver(x_final,y_final,diffx_final*scale,diffy_final*scale,'AutoScale','off','Alignment',ArrowAlignment); %AutoScale I believe hurts this process, so I shut it off. 
%Still recommended to further explore autoscale. Alignment=head means the head of the arrow will


ylabel(ylabelname) %ylabel for graph
xlabel(xlabelname) %xlabel for graph
title(titlename) %title for graph


%Plot with black arrows that we care about (I, Ross cares about)
figure('Position',[10 10 1000 600],'Color','w'); %Just creates a plot setup; I stole this line from the web.


%Making a graph with black/colored arrows (coloring is experimental atm)

%Code to create black arrows found here: https://stackoverflow.com/questions/18776172/in-matlab-how-do-i-change-the-arrow-head-style-in-quiver-plot/18776822#18776822

U = quiv.UData; %Extracts diffx_final (x-velocity) data 
V = quiv.VData; %Extracts diffy_final (y-velocity) data 
X = quiv.XData; %Extracts x_final (x-position) data 
Y = quiv.YData; %Extracts y_final (y-position) data 




for i = 1:length(X) %For all points
    ah = annotation('arrow',...
        'headStyle','cback1','color','black','HeadLength',headLength,'HeadWidth',headWidth,'LineWidth',0.01); %reformant arrow, color arrow, currently set as red spectrum
    set(ah,'parent',gca); %Place arrow in current chart (tbh) I am unsure
    set(ah,'position',[X(i,1) Y(i,1) LineLength*U(i,1) LineLength*V(i,1)]); %Place arrow here
end

ylabel(ylabelname) %ylabel for graph
xlabel(xlabelname) %xlabel for graph
title(titlename) %title for graph

%Not used brokenish idea:

%slope=V./U; %used for color of arrows
%axSlope=max(abs(V./U)); %Used for colors arrows to normalize the values from [0,1]
%colorarrow=abs(slope(i)/maxSlope); %Calculate each color arrow value

%  ah = annotation('arrow','headStyle','cback1','color',[(1-colorarrow) 0 0],'HeadLength',headLength,'HeadWidth',headWidth,'LineWidth',0.01); %reformant arrow, color arrow, currently set as red spectrum