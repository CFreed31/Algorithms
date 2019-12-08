clc; clear; close all;

% False Position Algorithm Test
% 08 Dec 19
% Clayton Freed

f = @(t) t^2-16;
xl = 0; xu = 10;

[root, fx, ea, iter] = falseposition(f, xl, xu)


