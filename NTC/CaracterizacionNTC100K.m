clear all;close all;
% Valores medidos
x1=[25 30 40 50 60 70 80 90 100];
y1=[102500 82400 55200 37300 26000 18000 13200 9400 7400];

x2=[100 120 150 164 197 219 234 244 275 300];
y2=[7400 4300 1900 1310 650 410 332 256 172 120];

Xt=[x1 x2];
Yt=[y1 y2]

% Rango completo °C #################################################
a=polyfit(Xt,Yt,3);

T=0:2:300;
Rntc=a(1)*T.^3+a(2)*T.^2+a(3)*T+a(4);

figure(1), hold on
plot(Xt,Yt,'x','markersize',5)
plot(T,Rntc)
grid minor
legend("Medicion","Aproximacion")
title("Caracterizacion NTC 100K")
xlabel("Temperatura [°C]")
ylabel("Resistencia [Ohm]")

R=470;

% Rango de 0 a 100 °C #################################################
T1=0:2:100;
cuenta1=1024*R./(R+y1);
a1=polyfit(x1,cuenta1,1);
c1=a1(1)*T1+a1(2);
% Rango de 100 a 300 °C #################################################
T2=100:2:300;
cuenta2=1024*R./(R+y2);
a2=polyfit(x2,cuenta2,1);
c2=a2(1)*T2+a2(2);

figure(2), hold on
plot(x1,cuenta1,'*','markersize',5,'color','b')
plot(T1,c1,'color','r')
plot(x2,cuenta2,'*','markersize',5,'color','b')
plot(T2,c2,'color','r')
grid minor
title("Entrada analogica vs T - calculada")
xlabel("Temperatura [°C]")
ylabel("Cuenta")
legend("Medicion","Aproximacion",'location','southeast')

N=1:10;
Tmedida=[50 75 100 125 150 200 225 250 275 300];
Tmia=[95 98 107 119 140 198 227 252 270 292];

figure(3), hold on
plot(N,Tmedida,'*','markersize',5)
plot(N,Tmia,'^','markersize',5)
grid minor
title("Temperaturas medidas")
xlabel("Medicion #N")
ylabel("Temperatura [°C]")
legend("Multimetro","Mia",'location','southeast')