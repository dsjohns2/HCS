function [] = Plot_Vacuum_Data_Function( exp_num )
%This function plots the vacuum data.

filename = strcat('C:\Users\Danny\Documents\University of Illinois\HCS\Data\Experiment_', num2str(exp_num), '\Vacuum_Pressure_Data.xlsx');
table = xlsread(filename);
[m, ~] = size(table);
x = table(1:m, 1);
y = table(1:m, 2);
fig = plot(x, y);
title('Vacuum Pressure');
xlabel('Time (seconds)');
ylabel('Pressure (millitorr)');
saveas(fig, strcat('C:\Users\Danny\Documents\University of Illinois\HCS\Data\Experiment_', num2str(exp_num), '\Vacuum_Pressure_Data_Plot.png'))

end

