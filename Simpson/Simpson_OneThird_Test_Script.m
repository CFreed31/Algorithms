% Simpson's 1/3 Rule Test Code
%
% Clayton Freed - 09 Nov 19
clc; clear; close all

x = [0 1 2 3 4];
y = 1 - exp(-x);

t = linspace(0,4,100);
f = 1 - exp(-t);

hold on
plot(x,y, 'b')
plot(t,f, 'm')

legend('Simpson 1/3 Rule','Actual','location','southeast')

I = Simpson_OneThird(x,y)
