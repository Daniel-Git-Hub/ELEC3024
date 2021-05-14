T_s = 0.01;
%(J)     moment of inertia of the rotor (gcm^2)  
J = 5.55;  

%(b)     motor viscous friction constant (mNm*min)      
b = 6.648e-5;  

%(Ke)    electromotive force constant (min^-1V^-1)  
Ke = 520;  

%(Kt)    motor torque constant (mNm A^-1)  
Kt = 18.4;  

%(R)     electric resistance (?)             
R = 3.69;  

%(L)     electric inductance (mH)                  
L = 0.231;  

s = tf('s');  

gain = 6859/421875; 
