function y = CPG4feet(t,Iulf1,Iulf2,Ivlf1,Ivlf2,Iulh1,Iulh2,Ivlh1,Ivlh2,Iurf1,Iurf2,Ivrf1,Ivrf2,Iurh1,Iurh2,Ivrh1,Ivrh2,Is,gamma,beta,omega,tau)

ff = @(x) max(0,x);

dIulf1dt = (-Iulf1 + ff(Is + gamma*Iurh2 - beta*Ivlf1 - omega*Iulf2))/tau; 
dIulf2dt = (-Iulf2 + ff(Is + gamma*Iurh1 - beta*Ivlf2 - omega*Iulf1))/tau;
dIulh1dt = (-Iulh1 + ff(Is - gamma*Iurf2 - beta*Ivlh1 - omega*Iulh2))/tau; 
dIulh2dt = (-Iulh2 + ff(Is - gamma*Iurf1 - beta*Ivlh2 - omega*Iulh1))/tau;
dIurf1dt = (-Iurf1 + ff(Is + gamma*Iulf2 - beta*Ivrf1 - omega*Iurf2))/tau; 
dIurf2dt = (-Iurf2 + ff(Is + gamma*Iulf1 - beta*Ivrf2 - omega*Iurf1))/tau;
dIurh1dt = (-Iurh1 + ff(Is + gamma*Iulh2 - beta*Ivrh1 - omega*Iurh2))/tau; 
dIurh2dt = (-Iurh2 + ff(Is + gamma*Iulh1 - beta*Ivrh2 - omega*Iurh1))/tau;

dIvlf1dt = (-Ivlf1 + ff(Iulf1))/tau; 
dIvlf2dt = (-Ivlf2 + ff(Iulf2))/tau;
dIvlh1dt = (-Ivlh1 + ff(Iulh1))/tau; 
dIvlh2dt = (-Ivlh2 + ff(Iulh2))/tau;
dIvrf1dt = (-Ivrf1 + ff(Iurf1))/tau; 
dIvrf2dt = (-Ivrf2 + ff(Iurf2))/tau;
dIvrh1dt = (-Ivrh1 + ff(Iurh1))/tau; 
dIvrh2dt = (-Ivrh2 + ff(Iurh2))/tau;

y = [dIulf1dt; dIulf2dt; dIvlf1dt; dIvlf2dt; dIulh1dt; dIulh2dt; dIvlh1dt; dIvlh2dt; dIurf1dt; dIurf2dt; dIvrf1dt; dIvrf2dt; dIurh1dt; dIurh2dt; dIvrh1dt; dIvrh2dt];