clear all
close all
clf
global Pstar cstar n maxcount M Q camax RT cI;
CIconstant =[0.209,0.173,0.143,0.118,0.097,0.094,0.09,0.087,0.084,0.081,0.078,0.075,0.072,0.069];
Alt = [0, 5000,10000,15000,20000,21000,22000,23000,24000,25000,26000,27000,28000]; % alt in feet
for i = 1:length(Alt)
   
    cI=CIconstant(i)/(22.4*(310/273));
setup_lung
cvsolve
outchecklung
PIlist(i)=PI;
PAlist(i)=PAbar;
Palist(i)=Pabar;
Pvlist(i)=Pv;
cAlist(i)=cAbar;
calist(i)=cabar;
cvlist(i)=cv;
end

% Plot the results
figure('NumberTitle','off','Name','Partial pressure of oxygen vs cref constant');
plot(Alt,PIlist)
hold on
plot(Alt,Palist)
plot(Alt,PAlist)
plot(Alt,Pvlist)
plot(Alt,cAlist)
plot(Alt,calist)
plot(Alt,cvlist)
xlabel('Altitude')
ylabel('Partial pressure of oxygen (mmHg)')
legend('PI', 'Pabar', 'PAbar', 'Pv','cAbar','cabar','cv')
title('Partial pressure of oxygen vs Altitude')