%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
betavec =[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];
% 
% beta=betavec(10)
% for M=0:0.01:10
% setup_lung
% cvsolve
% outchecklung
% 
% end

close all
Mvec=[0.04,0.04,0.04,0.03,0.03,0.03,0.03,0.03,0.03,0.03,0.02];
plot(betavec,Mvec,'o-');
xlabel('beta');
ylabel('M-max');
title('beta vs M-max');