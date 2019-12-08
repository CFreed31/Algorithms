function [I] = Simpson_OneThird(x,y)
% Simpson 1/3 Rule
% Clayton Freed
% 09 Nov 19
%
% This code performs the simpson one third rule for integration
% Using input values of x in an array that correspond to y values
%

n_total = numel(x);

A = 1; B = 2; C = 3;
h = x(2)-x(1);

i = 1; I = 0;

if numel(x)~= numel(y)
    error('number of elements in x array do not match y, try agian');
elseif sum(x) ~= sum(linspace(x(1), x(n_total), n_total))
    error('uneven spacing of x array elements, try agian');
elseif floor(numel(x)/2) == (numel(x)/2)
    iter = floor((numel(x)/2))-1;
    warning('Last interval uses trapazoidal rule. Uneven entries.');
    
% Trapazoidal Rule: I = (b-a)*[f(x_0)+f(x_1)) / 2]
%      (h)*[(y(xi) + y(xf)) / 2]

    xf = numel(x); xi = xf-1;
    I_TRAP = h*((y(xi) + y(xf)) / 2);
else
    iter = floor(numel(x)/2);
    I_TRAP = 0;
end

% Function: (b-a)*[(f(x_0) + 4*f(x_1) + f(x_3)) / 6]
%      (2)*(h)*[(y(A) + 4*y(B) + y(C)) / 6]

while i <= iter
    I = I + 2*h*((y(A) + 4*y(B) + y(C))/6);
    A = A+2; B = B+2; C = C+2;
    i = i+1;
end
format long
I = I + I_TRAP;

end

