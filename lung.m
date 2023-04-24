clear all
close all
clf
global Pstar cstar n maxcount M Q camax RT cI;
%CIconstant =[0.209,0.173,0.143,0.118,0.097,0.094];
crefconstant= [0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.1];
Alt = [0, 5000,10000,15000,20000,21000]; % alt in feet
for i = 1:length(crefconstant)
    constant=crefconstant(i)
    %cI=CIconstant(i)/(22.4*(310/273));
setup_lung
cvsolve
outchecklung
crefconstant(i)
PIlist(i)=PI;
PAlist(i)=PAbar;
Palist(i)=Pabar;
Pvlist(i)=Pv;
cAlist(i)=cAbar;
calist(i)=cabar;
cvlist(i)=cv;
end

% Plot the results
figure('NumberTitle','off','Name','cstar vs beta');

betavec=[0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];
cstarvec=[0.00316,0.00316,0.00316,0.00395,0.00395,0.00395,0.00395,0.00395,0.00395,0.00474];
plot(cstarvec,betavec,'o-')
xlabel('beta')
ylabel('ctar (moles/liter')
title('cstar vs beta')
figure('NumberTitle','off','Name','Partial pressure of oxygen vs cref constant');
plot(crefconstant,PIlist)
hold on
plot(crefconstant,Palist)
plot(crefconstant,PAlist)
plot(crefconstant,Pvlist)
plot(crefconstant,cAlist)
plot(crefconstant,calist)
plot(crefconstant,cvlist)
xlabel('cref constant')
ylabel('Partial pressure of oxygen (mmHg)')
legend('PI', 'Pabar', 'PAbar', 'Pv','cAbar','cabar','cv')
title('Partial pressure of oxygen vs cstar')