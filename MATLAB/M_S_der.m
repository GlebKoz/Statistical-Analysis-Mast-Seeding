%% 

%function M_S_der defines system of differential equations for seeds and mice

%usage: plug it into ode45 to solve the system of equations

%inputs: a, b, d -- parameters for mice; e -- parameter for trees 
% (as defined on whiteboard in our working room)

%While t,y are *technically* inputs, you do not pass it to the function,
% because it will be done by ode45 function.

%outputs: vector of t values; matrix with 2 columns where y(:,1) is amount
% of mice through time and y(:,2) is amount of seeds through time
function dMdtdSdt = M_S_der(t,y,a, b, d,e)


dMdtdSdt = [b*e*y(1)*y(2)-d*y(1)-a*y(1).^2;-e*y(1)*y(2)];%system of equations is defined here
end