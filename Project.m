clc;  
Constants;

%P_motor = Kt/((J*s+b)*(L*s+R)+Kt^2);  
P_motor = Kt/(((J*s + b)*(L*s+R))+Kt^2);  

gain = 6859/421875; 

PIDCalculate;


controller = pid(P, I, D);

Gs = controller*P_motor*gain;

finalSystem = feedback(Gs, 1); 

response = stepinfo(finalSystem);
disp(response)
% step(finalSystem) 

%pidtool(P_motor*gain); 

%---->settling time is 1.0019 and overshoot is %zero for now<------- 

SimulinkIdeal