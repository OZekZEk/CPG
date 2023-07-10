clear all
close all
clc
%% tau deðiþiyor
Is = 10e-9;
Itau = 25e-9;
C = 1e-9;
Vt = 26*1e-3;
gamma = 0.33;
beta = 5;
omega = 4;
tau = C*Vt/Itau;

dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.09,1e4);

% opts = odeset;
opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(1)
subplot(3,1,1)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time(seconds)");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG \tau = 1.04 milliseconds");
hold off
grid;

limits = [1 40;1 40] * 1e-10;
axis = [1  3];%çizdirdiðim denklem Ör:Iulf1-Ivlf1
sample = 10;%kaç tane baþlangýç noktasý olacak
dimension=16;%denklem sayýsý
fignumber = 2;

phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)


Itau = 25e-9;
C = 10e-9;
Vt = 26*1e-3;
tau = C*Vt/Itau;

dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.9,1e4);

opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(1)
subplot(3,1,2)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG \tau = 10.4 milliseconds");
hold off
grid;

phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

Itau = 25e-9;
C = 100e-9;
Vt = 26*1e-3;
tau = C*Vt/Itau;

dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
x0 = 1e-9*rand(16,1);
tspan = linspace(0,9,1e4);

opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(1)
subplot(3,1,3)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG \tau = 104 milliseconds");
hold off
grid;

phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

figure(2)
title("\tau Effect");
legend('\tau = 10.4 milliseconds','\tau = 52 milliseconds','\tau = 104 milliseconds');
xlabel("I_{v1}^{LF}(nA)");
ylabel("I_{u1}^{LF}(nA)");

Itau = 25e-9;
C = 10e-9;
Vt = 26*1e-3;
tau = C*Vt/Itau;

%% beta deðiþecek

limits = [1 40;1 40] * 1e-10;
axis = [1  3];%çizdirdiðim denklem Ör:Iulf1-Ivlf1
sample = 10;%kaç tane baþlangýç noktasý olacak
dimension=16;%denklem sayýsý
fignumber=3;

beta = 3;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

beta = 4;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

beta = 5;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)
title("\beta Effect");
legend('\beta = 3','\beta = 4','\beta = 5')
xlabel("I_{v1}^{LF}(nA)");
ylabel("I_{u1}^{LF}(nA)");

%% Omega deðiþecek

limits = [1 40;1 40] * 1e-10;
axis = [1  3];%çizdirdiðim denklem Ör:Iulf1-Ivlf1
sample = 10;%kaç tane baþlangýç noktasý olacak
dimension=16;%denklem sayýsý
fignumber=4;

omega = 3;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

omega = 4;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

omega = 5;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)
title("\omega Effect");
legend('\omega = 3','\omega = 4','\omega = 5')
xlabel("I_{v1}^{LF}(nA)");
ylabel("I_{u1}^{LF}(nA)");

omega=4;

%% gamma deðiþecek

limits = [1 40;1 40] * 1e-10;
axis = [1  3];%çizdirdiðim denklem Ör:Iulf1-Ivlf1
sample = 10;%kaç tane baþlangýç noktasý olacak
dimension=16;%denklem sayýsý
fignumber=6;

gamma = 0.21;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);

x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.9,1e4);

% opts = odeset;
opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(5)
subplot(3,1,1)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG \gamma = 0.21");
hold off
grid;

phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

gamma = 0.33;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);

x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.9,1e4);

% opts = odeset;
opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(5)
subplot(3,1,2)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG \gamma = 0.33");
hold off
grid;

phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)

gamma = 0.45;
dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);

x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.9,1e4);

% opts = odeset;
opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(5)
subplot(3,1,3)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG \gamma = 0.45");
hold off
grid;

phasePotrait3(fignumber,dxdt,limits,axis,dimension,sample)
title("\gamma Effect");
legend('\gamma = 0.21','\gamma = 0.33','\gamma = 0.45')
xlabel("I_{v1}^{LF}(nA)");
ylabel("I_{u1}^{LF}(nA)");

gamma = 0.33;

%% Is deðiþecek

Is = 1e-9;

dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.9,1e4);

% opts = odeset;
opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(7)
subplot(3,1,1)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG I_s = 1 nanoAmpere");
hold off
grid;

Is = 10e-9;

dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.9,1e4);

% opts = odeset;
opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(7)
subplot(3,1,2)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG I_s = 10 nanoAmpere");
hold off
grid;

Is = 100e-9;

dxdt = @(t,x) CPG4feet(t,x(1,:),x(2,:),x(3,:),x(4,:),x(5,:),x(6,:),x(7,:),x(8,:),x(9,:),x(10,:),x(11,:),x(12,:),x(13,:),x(14,:),x(15,:),x(16,:),Is,gamma,beta,omega,tau);
x0 = 1e-9*rand(16,1);
tspan = linspace(0,0.9,1e4);

% opts = odeset;
opts = odeset('Reltol',1e-12,'Abstol',1e-12);
[tt,xx] = ode15s(dxdt, tspan, x0, opts);

figure(7)
subplot(3,1,3)
plot(tt,xx(:,1),'linewidth',2);
hold on
plot(tt,xx(:,5),'linewidth',2);
plot(tt,xx(:,9),'linewidth',2);
plot(tt,xx(:,13),'linewidth',2);
legend('I_{u1}^{LF}','I_{u1}^{LH}','I_{u1}^{RF}','I_{u1}^{RH}');
xlabel("time");
ylabel("I_{u1}^{LF}, I_{u1}^{LH}, I_{u1}^{RF}, I_{u1}^{RH}");
title("CPG I_s = 100 nanoAmpere");
hold off
grid;