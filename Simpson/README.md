# **Simpson Algorithm**
### *This algorithm uses the simpsons 1/3 rule to estimate the area under a function on a graph, or rather approximate the integral of the function.*
---
#### -`Inputs:` *for a function 'y(x)', 'x' being the independed variable for the dependent variable 'y', the following must be entered; An array of evenly spaced 'x' values along with their corresponding 'y' values (both can be arrays of X and Y respectively) entered as [X,Y]* 
#### -`Outputs:` *the algorithm outputs the approximated integral over the area bound by the first and last 'x' values over the 'y' function*
#### -`Limitations:` *this algorithm will not be one hundred percent accurate for anything other than a line, must have evenly spaced 'x' values, will use trapazoidal rule for last segment if entries are uneven, large step sizes (i.e. greater distance between 'x' values) creates a larger error in the integral approximation*
---
#### *(This foulder contains both a Simpson test and primary function .m file in MATLAB)*
