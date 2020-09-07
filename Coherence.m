
fs = 500; % sampling rate
timeframe= 10; 
CohSec=2
N = fs*timeframe; 
freqStep = fs/N; 
N1s=fs;           
NCoh=N1s*CohSec;         
FreqCohRes=fs/NCoh;  % frequency resolution
EndNumber= fix(length(data1)/N1s)-timeframe; 
 
for s=1:EndNumber
 
x1=Signal1((1+(s-1)*N1s):(N+(s-1)*N1s));    
y1=Signal2((1+(s-1)*N1s):(N+(s-1)*N1s));    

 
[Cx1y1,FreqCoh]=mscohere(x1,y1,hamming(NCoh),1/2*NCoh,NCoh,fs); 
% (x1,y1 coherece, with hamming window, take NCoh points, half points overlap, number of fft:NCoh, sampling frequency:fs
Coh1(:,s)=Cx1y1;                         

FreqLable(:,s)=FreqCoh;
TimeLable(1:(NCoh/2+1),s)=s-1;
 
end

