clc; clear; close all;

% LU Factorization Test
% 08 Dec 19
% Clayton Freed

A = [2 4 3; 1 3 5; 3 1 2];

[L,U,P] = luFactor(A)