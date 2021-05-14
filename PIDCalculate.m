calculatedPID = pidtune(P_motor*gain, "PID");


KdIncrease = 490;
dKd = 1;
while 1
    controller = pid(calculatedPID.Kp, calculatedPID.Ki, calculatedPID.Kd+KdIncrease);
    Gs = controller*P_motor*gain;

    finalSystem = feedback(Gs, 1); 

    response = stepinfo(finalSystem);

    if response.SettlingTime > 1
        KdIncrease = KdIncrease - 2*dKd;
        dKd = dKd/10;
        if dKd < 0.000001
            break
        end
    end
    KdIncrease = KdIncrease + dKd;
end
P = calculatedPID.Kp;
I = calculatedPID.Ki;
D = calculatedPID.Kd + KdIncrease - dKd;