a =importdata('task3.m');  
 zeroes = roots(num); 
 poles = roots(den); 
 zplane(num,den); 
 title('Pole-Zero Diagram Of Second Order IIR Notch Filter'); 
 grid on; 