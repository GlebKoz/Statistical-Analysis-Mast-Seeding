%% 
%function T_diff defines difference equation for trees

%usage: Use it to compute T_n+1 based on T value

%inputs: S_n,T_n,g, d_T(delta T),
% alpha (as defined on whiteboard in our working room)

%output: T_n+1 value

function T_nplus1 = T_diff(S_n,T_n,g, d_T, alpha)


T_nplus1 = T_n+g*S_n-d_T*T_n-alpha*T_n.^2; %difference eq. is defined here
end