%Author: Ross Williams


%%%%Untested Assumptions/Potential Errors%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%USER INPUTS%%%%%%%%%%%%%%%%%%%%%
datafilename="currentvectorv1.xlsx"; %It must be an xlsx file

%Smaller the numbers for both reduced data and reduce time will keep more of the data
Reducedata=2; %Define, of the total initial conditions you have, by what whole number factor do you want to reduce by. See "reducedarray" for how it affects the code
Reducetime=10; %Define how many time steps you want to skip.


Normalization=1; %If you want normalization, make it 1, else put 0
MaxTimeSeries1=1; %For timeseries 1, used to normalize.
MaxTimeSeries2=4000; %For timeseries 2, used to normalize


xlabelname="Process Problems";  %This will the name for your time series 1 (x-axis). Do not include normalization to title (will automatically do it)
ylabelname="Resources for Production"; %This will the name for your time series 2 (y-axis). Do not include normalization to title (will automatically do it)
titlename="Phase Plot of Process Problems and Resources for Production";%This will make your title for the graph
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%COMMENT OUT TO SAVE TIME ONCE RUN ONCE%%%
data=xlsread(datafilename); %Import data
data(1,:)=[]; %Remove Time Step Row. ONLY RUN ONCE AND THEN COMMENT OUT THIS LINE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


howmuchdata=length(data); %Determines how much data you imported
array1=3:4:howmuchdata; %Array of rows for first time series
array2=4:4:howmuchdata; %Array of rows for 2nd time series
arraytot=cat(2,array1,array2); %concadenates arrays of rows for 1st and 2nd time series
arraytotsort=sort(arraytot); %sorts row order of concadenated time series

timeseries=data(arraytotsort,:); %Extracts only time series from data

array3=1:2:(howmuchdata/2); %Array of rows for 1st time series in "timeseries" matrix 
array4=2:2:(howmuchdata/2); %Array of rows from 2nd time series in "timeseries" matrix

if Normalization==1
timeseries(array3,:)=timeseries(array3,:)./MaxTimeSeries1; %x-axis previously known as the 1st time series
timeseries(array4,:)=timeseries(array4,:)./MaxTimeSeries2; %y-axis previously known as the 2nd time series
xlabelname=strcat("Normalized ",xlabelname);
ylabelname=strcat("Normalized ",ylabelname);
end

x=timeseries(array3,:); %x-axis previously known as the 1st time series
y=timeseries(array4,:); %y-axis previously known as the 2nd time series


minx=min(x(:,1)); %Locate min x value
miny=min(y(:,1)); %Locate min y value
maxx=max(x(:,1)); %Locate max x value
maxy=max(y(:,1)); %Locate max y value


%Create the data
MaxTSx=find(x(:,1)==maxx)*2-1; %Multiply by 2 as we'll need to extract data from real ts, not the x, and subtract 1 as it is x-series
MaxTSx_Yequivalent=MaxTSx+1; %Finds y time series that goes along with MaxTSx
MaxTSx_total=sort(cat(1,MaxTSx,MaxTSx_Yequivalent)); %Concatenates needed rows and sorts
xmax=timeseries(MaxTSx_total,:); %All ts data relevant for xmax

MinTSx=find(x(:,1)==minx)*2-1; %Multiply by 2 as we'll need to extract data from real ts, not the x, and subtract 1 as it is x-series
MinTSx_Yequivalent=MinTSx+1; %Finds y time series that goes along with MinTSx
MinTSx_total=sort(cat(1,MinTSx,MinTSx_Yequivalent)); %Concatenates needed rows and sorts
xmin=timeseries(MinTSx_total,:); %All ts data relevant for xmin

MaxTSy=find(y(:,1)==maxy)*2; %Multiply by 2 as we'll need to extract data from real ts and subtract 1 as it is x-series
MaxTSy_Xequivalent=MaxTSy-1; %Finds x time series that goes along with MaxTSy
MaxTSy_total=sort(cat(1,MaxTSy,MaxTSy_Xequivalent)); %Concatenates needed rows and sorts
ymax=timeseries(MaxTSy_total,:); %All ts data relevant for ymax

MinTSy=find(y(:,1)==miny)*2; %Multiply by 2 as we'll need to extract data from real ts and subtract 1 as it is x-series
MinTSy_Xequivalent=MinTSy-1; %Finds x time series that goes along with MinTSy
MinTSy_total=sort(cat(1,MinTSy,MinTSy_Xequivalent)); %Concatenates needed rows and sorts
ymin=timeseries(MinTSy_total,:); %All ts data relevant for ymin


%Reduction of data
reducearrayX_x=1:2*Reducedata:size(xmax,1); %What x-rows from your time series from your xmin or xmax data 
reducearrayY_x=1:2*Reducedata:size(ymax,1); %What x-rows from your time series from your ymin or ymax data 

reducearrayX_y=reducearrayX_x+1; %The associated y-rows from your time series from your xmin or xmax data 
reducearrayY_y=reducearrayY_x+1; %The associated y-rows from your time series from your ymin or ymax data 

reducearrayX=sort(cat(2,reducearrayX_x,reducearrayX_y)); %Concatenating rows numbers and y-rows for xmin or xmax data
reducearrayY=sort(cat(2,reducearrayY_x,reducearrayY_y)); %Concatenating row numbers and y-rows for ymin or ymax data

reducetimestep=1:Reducetime:size(timeseries,2); %Reduces timestep

xmax_final=xmax(reducearrayX,reducetimestep); %Reducing amount of lines and timesteps for xmax
xmin_final=xmin(reducearrayX,reducetimestep); %Reducing amount of lines and timesteps for xmin
ymax_final=ymax(reducearrayY,reducetimestep); %Reducing amount of lines and timesteps for ymax
ymin_final=ymin(reducearrayY,reducetimestep); %Reducing amount of lines and timesteps for ymin


%Begin final attackrun for plotting
array5_xx=(1:2:size(xmax_final,1)); %Extract x time series data to plot for xmin and xmax
array6_xy=(2:2:size(xmax_final,1)); %Extract y time series data to plot for xmin and xmax

array7_yx=(1:2:size(ymax_final,1)); %Extract x time series data to plot for ymin and ymax
array8_yy=(2:2:size(ymax_final,1)); %Extract y time series data to plot for ymin and ymax

figure('Position',[10 10 1000 600],'Color','w'); %Create figure

xmax_final_x=xmax_final(array5_xx,:); %Seperate out x time series data for xmax
xmax_final_y=xmax_final(array6_xy,:); %Seperate out y time series data for xmax

for i=1:size(xmax_final_x,1) %Run through all xmax data
    for j=1:(size(xmax_final_x,2)-1)
    u=xmax_final_x(i,j+1)-xmax_final_x(i,j); %Velocity x and points to next point
    v=xmax_final_y(i,j+1)-xmax_final_y(i,j); %Velocity y and points to next point
    quiver(xmax_final_x(i,j),xmax_final_y(i,j),u,v,'Alignment','tail','Color','black'); %Plot all xmax data
    hold on %Use the same graph
    end
    plot(xmax_final_x(i,j+1), xmax_final_y(i,j+1),'black.',MarkerSize=30); %Plot final point
    hold on %Use the same graph
end


xmin_final_x=xmin_final(array5_xx,:); %Seperate out x time series data for xmin
xmin_final_y=xmin_final(array6_xy,:); %Seperate out y time series data for xmin

for i=1:size(xmin_final_x,1) %Run through all xmin data
    for j=1:(size(xmin_final_x,2)-1)
    u=xmin_final_x(i,j+1)-xmin_final_x(i,j); %Velocity x and points to next point
    v=xmin_final_y(i,j+1)-xmin_final_y(i,j); %Velocity y and points to next point
    quiver(xmin_final_x(i,j),xmin_final_y(i,j),u,v,'Alignment','tail','Color','black'); %Plot all xmin data
    hold on %Use the same graph
    end
    plot(xmin_final_x(i,j+1), xmin_final_y(i,j+1),'black.',MarkerSize=30); %Plot final point
    hold on %Use the same graph
end


ymax_final_x=ymax_final(array7_yx,:); %Seperate out x time series data for ymax
ymax_final_y=ymax_final(array8_yy,:); %Seperate out y time series data for ymax

for i=1:size(ymax_final_x,1) %Run through all ymax data
    for j=1:(size(ymax_final_x,2)-1)
    u=ymax_final_x(i,j+1)-ymax_final_x(i,j); %Velocity x and points to next point
    v=ymax_final_y(i,j+1)-ymax_final_y(i,j); %Velocity y and points to next point
    quiver(ymax_final_x(i,j),ymax_final_y(i,j),u,v,'Alignment','tail','Color','black'); %Plot all ymax data
    hold on %Use the same graph
    end
    plot(ymax_final_x(i,j+1), ymax_final_y(i,j+1),'black.',MarkerSize=30); %Plot final point
    hold on %Use the same graph
end


ymin_final_x=ymin_final(array7_yx,:); %Seperate out x time series data for ymin
ymin_final_y=ymin_final(array8_yy,:); %Seperate out y time series data for ymin

for i=1:size(ymin_final_x,1) %Run through all ymin data
    for j=1:(size(ymin_final_x,2)-1)
    u=ymin_final_x(i,j+1)-ymin_final_x(i,j); %Velocity x and points to next point
    v=ymin_final_y(i,j+1)-ymin_final_y(i,j); %Velocity y and points to next point
    quiver(ymin_final_x(i,j),ymin_final_y(i,j),u,v,'Alignment','tail','Color','black'); %Plot all ymin data
    hold on %Use the same graph
    end
    plot(ymin_final_x(i,j+1), ymin_final_y(i,j+1),'black.',MarkerSize=30); %Plot final point
    hold on %Use the same graph
end

if Normalization==1
xlim([0 1])
ylim([0 1])
end
ylabel(ylabelname) %ylabel for graph
xlabel(xlabelname) %xlabel for graph
title(titlename) %title for graph
