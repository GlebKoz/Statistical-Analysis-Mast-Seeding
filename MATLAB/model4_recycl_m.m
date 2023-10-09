


% lines 3-16 define parameters and starting values
% (as defined on whiteboard in our working room)

T_0=1;
g=0.7;%cant be more than 1
d_T=0.01; % d_T is same as delta T %cant be more than 1
alpha=0.001;%cant be more than 1
m_vector=[1.6,1.65,1.62,1.6,2.5];%define values of m that will cycle between years



M_0=2;
a=0.001; %cant be more than 1
b=0.2;
d=0.01;%cant be more than 1

S_0=3;%cant be more than 1
e=0.0019;
d_S=1-g;% d_S is same as delta S %cant be more than 1

% define yearly time interval and time step of ode45 function
t_start=0;
t_int=0.01; %time step of ode45 function
t_end=1;

%t_start and t_end are introduced in case if we want to say that
% one year interval is between, lets say, t=0 and t=2 (i know it 
% sounds crazy, but this is my vision. rn my one year
% interval is between t=0 and t=1, just as normal people would do)



% set starting values to starting values
% (my code is not perfect, i know. its 2 am and i wanna sleep :-(  )
T_start=T_0;
S_start=S_0;
M_start=M_0;


%set amount of years 
%tested for up to 10,000 years (pretty sure its more than we'll ever need)
%i.e. for up to 10,000 years we get the behavior that is expected.
num_years=50;


%execute Masting2WithAppend function using parameters above.
%outputs: t (vector of time values from 0 to num_years),
% M (vector of mice count vals from 0 to num_years, same size as t vector),
% S (vector of seed count vals from 0 to num_years, same size as t vector),
% T(vector of tree count vals from 0 to num_years, its size is num_years+1)
[t,M,S,T]=Masting_Append_recycl_m(T_start,g,d_T,alpha,M_start,a,b,d,S_start,e,m_vector,d_S,t_start,t_int,t_end,num_years);


%plot t, M, S, T values
plot(t,M,'-r',t,S,'-b',[0:num_years],T,'-*k',"LineWidth",2) % notice that M, S are
% plotted with respect to t, while T is plotted with
% respect to [0:num_years], where [0:num_years] is a vector of discrete 
%yearly values: 0, 1, ...., num_years.
title('Solution of van der Pol Equation with ODE45');
xlabel('Time t');
ylabel('Solution y');
legend('M','S','T');

%% 

% I use min and max values to play with parameters: this way i know if
% particlular set of perameters makes M, S or T less than zero or super
% large (which is bad)
M_min=min(M)
S_min=min(S)
T_min=min(T)

M_max=max(M)
S_max=max(S)
T_max=max(T)



