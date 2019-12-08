function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
if nargin < 3
    error('Not enough inputs, 3 arguments required');
end
test = func(xl, varargin{:})*func(xu,varargin{:});
if test > 0
    error('no sign change');
end
if nargin < 4 
    es = 0.0001;
end
if nargin < 5
    maxit = 200;
end

iter = 0;
xr = 0;
ea = 100;

while 1==1
    xrold = xr;
    xr = xu - ((func(xu)*(xu-xl))/(func(xu)-func(xl)));
    iter = iter + 1;
    if xr ~= 0 
        ea = abs((xr - xrold)/xr)*100;
    end
    test = func(xr);
    if test < 0
        xl = xr;
    elseif test > 0
        xu = xr;
    else
        ea = 0;
    end
    if ea <= es || iter == maxit
        break
    end
end

root = xr;
fx = func(xr, varargin{:});


end

