syms s

[Num,Den] = tfdata(Gs,'v');
sys_syms=poly2sym(Num,s)/poly2sym(Den,s);

Kp = limit(sys_syms,eps);
Kv = limit(s*sys_syms,s,eps);
Ka = limit(s*s*sys_syms,s,eps);

disp("Step");
disp(double(1/(1+Kp)))

disp("Ramp");
disp(double(1/Kv))

disp("Parabolic");
disp(double(1/Ka))