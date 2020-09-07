
%% load epoch for parameter
e1 = ch4_1_5hz_1;



degree = (0:1:359); %% create degree
radian = (pi/180)*degree';
cr = cos(radian);  %% x axis
sr = sin(radian);  %% y axis

%% calculate mean resultant vevtor

v1 = sqrt((mean(sr.*e1)).^2+(mean(cr.*e1)).^2);

%% calculate mean angle

d1 = 180/pi*atan2(mean(sr.*e1),mean(cr.*e1));


