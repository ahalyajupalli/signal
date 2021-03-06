a=importdata('task1.m');
sound(yes); 
sound(yes1); 
sound(yes2);  
max_value = max(abs(yes1));  
yes1 = yes1/max_value; 
yes1 = yes1(Fs*0.35:Fs*0.40);  
sound(yes1); 
ext = 0.35:1/Fs:0.40;  
plot(ext,yes1); 
title('50ms Segment of �e� in yes Which is roughly Periodic');
xlabel('Time In Seconds -------->'); ylabel('Magnitude----->');   
dtftyes1 = abs(fft(yes1)); 
plot(dtftyes1); 
title('Linear Magnitude Spectrum Of �e� Segment'); 
xlabel('Frequency In Hz'); ylabel('Magnitude'); 
dtftyes1 = dtftyes1(1:ceil((length(dtftyes1)/2))); 
tt = linspace(1/Fs,Fs/2,length(dtftyes1)); 
figure(2);
plot(tt,dtftyes1); 
title('Linear Magnitude Spectrum Of �e� Segment'); 
grid on; 
xlabel('Frequency In Hz'); ylabel('Magnitude'); 
dtftyes1log=20*log10(dtftyes1); 
figure(3);
plot(tt,dtftyes1log); 
title('Log Magnitude Spectrum Of �e� Segmnet (dB Scale)'); 
xlabel('Frequency In Hz'); ylabel('Magnitude'); grid on; 