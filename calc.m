close all, clear all

Vcc = 15;
Von = 13.3;
Voff = 1.2;
R = [10e3, 10e3];

Vin1 = 0:0.1:Vcc;
Vin2 = Vcc/2;

Vxon = Vin1 * R(2) / sum(R) + Von * R(1) / sum(R);
Vxoff = Vin1 * R(2) / sum(R) + Voff * R(1) / sum(R);

x1 = find(Vxon ==Vin2);
x2 = find(Vxoff == Vin2);

plot(Vin1, Vxon); hold on;
plot(Vin1, Vxoff)

