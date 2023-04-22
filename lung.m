%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
betalist =[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];

for i = 1:11
    beta=betalist(i)
setup_lung
cvsolve
outchecklung
PIlist(i)=PI;
PAlist(i)=PAbar;
Palist(i)=Pabar;
Pvlist(i)=Pv;
end

% Plot the results
figure('NumberTitle','off','Name','Beta variation');
plot(betalist,PIlist)
hold on
plot(betalist,Palist)
plot(betalist,PAlist)
plot(betalist,Pvlist)
xlabel('Beta')
ylabel('Partial pressure of oxygen (mmHg)')
legend('Inspired PO2', 'Mean arterial PO2', 'Mean alveolarPO2', 'Venous PO2')