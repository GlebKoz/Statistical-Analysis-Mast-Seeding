%% 

%function S_diff defines difference equation for seeds

%usage: Use it to compute S_n+1 based on S value

%inputs: S_n,T_nplus1(T_n+1),g, d_S(delta S),
% m (as defined on whiteboard in our working room)

%output: S_n+1 value


function S_nplus1 = S_diff(S_n,T_nplus1,g, d_S, m)


S_nplus1 = S_n+m*T_nplus1-d_S*S_n-g*S_n; %difference eq. is defined here
end
