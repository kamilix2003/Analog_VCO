close all, clear all

Vcc = 15;
V_max = 0.8; 
C = 100e-9;
R_in = 5e3;
R_L = 5e3:1:10e3;
I_bias = 1e-3;

V_in = Vcc - I_bias*R_L;

I_in = - (V_in - Vcc/2) ./ R_in;

f = I_in ./ (C * V_max);

plot(I_in, f)