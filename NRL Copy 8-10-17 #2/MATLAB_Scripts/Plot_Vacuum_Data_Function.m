function [] = Plot_Vacuum_Data_Function( filename )
%This function plots the vacuum data.

table = xlsread(strcat(filename, '.xlsx'));
[m, ~] = size(table);
x = table(1:m, 1);
y = table(1:m, 2);
fig = plot(x, y);
title('Vacuum Pressure');
xlabel('Time (seconds)');
ylabel('Pressure (millitorr)');
saveas(fig, strcat(filename, '.png'));

end

