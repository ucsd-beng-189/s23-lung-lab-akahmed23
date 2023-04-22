clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
CIconstant =[0.209,0.173,0.143,0.118,0.097];

for i = 1:5
    cI=CIconstant(i)/(22.4*(310/273));
setup_lung
cvsolve
outchecklung
cI(i)=cI
PIlist(i)=PI;
PAlist(i)=PAbar;
Palist(i)=Pabar;
Pvlist(i)=Pv;
cAlist(i)=cAbar;
calist(i)=cabar;
cvlist(i)=cv;
end

% Plot the results
figure('NumberTitle','off','Name','Partial pressure of oxygen vs Concentration of oxygen in air');
plot(cI,PIlist)
hold on
plot(cI,Palist)
plot(cI,PAlist)
plot(cI,Pvlist)
plot(cI,cAlist)
plot(cI,calist)
plot(cI,cvlist)
xlabel('Concentration of oxygen in air (moles/liter)')
ylabel('Partial pressure of oxygen (mmHg)')
legend('PI', 'Pabar', 'PAbar', 'Pv','cAbar','cabar','cv')
title('Partial pressure of oxygen vs Concentration of oxygen in air')