clc
clear all
m = 0.1 ;  %kg
F = 1;    %Forca em newtons
t0 = 0;
tf = 5;
dt = 0.1;
n = tf/dt;
v0 = 0;
v1(1) = v0;
t(1) = t0;
v2(1) = v0;
v3(1) = v0;
v4(1) = v0;

B1=0;
B2=0.005;
B3=0.01;
B4=0.05;
for i=1 : n
 vn1=v1(i);
 vn2=v2(i);
 vn3=v3(i);
 vn4=v4(i);
 
 tn=t(i);
 
 v1(1+i) = v1(i) + ((F/n) - (B1/m)*(v1(i)))*dt;
 v2(1+i) = v2(i) + ((F/n) - (B2/m)*(v2(i)))*dt;
 v3(1+i) = v3(i) + ((F/n) - (B3/m)*(v3(i)))*dt;
 v4(1+i) = v4(i) + ((F/n) - (B4/m)*(v4(i)))*dt;
 
 
 t(1+i) = t(i) + dt;
end
%v1=v0 + (F/m)*t;

plot(t,v1,'r')
hold on
plot(t,v2,'b')
plot(t,v3,'g')
plot(t,v4,'c')
grid on
xlabel('Tempo')
ylabel('Velocidade')
title('Lançamento de projeteis')

