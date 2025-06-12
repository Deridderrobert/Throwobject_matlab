%% 1. Parameters
% a. Parameters for throwing
v0      = 35;   % m/s
angle   = 45;   % degree

% b. Parameters for position
x0      = 0;    % distance
y0      = 0;    % height

% c. Parameters for scenario
xmin =    0;	% minimal distance
xmax =  200;    % maximal distance
ymin = -100;    % minimal height
ymax =  100;    % maximal height

% d. Parameters for gravitation and simulation time
g       = -9.81;% m/s^2
dt      = 0.01; % time resolution for simulation

%% 2. Simulation for throwing
% Initial coordinates
y = y0;         % Initial value for distance coordinate
x = x0;         % Initial value for height coordinate
% Initial time
t = 0;          % time
% Initial velocity
vx = cos(angle/180*pi) * v0;    % velocity in direction of x
vy = sin(angle/180*pi) * v0;    % velocity in direction of y

% Initiate plot
figure(1)
    
    H = plot(x,y,'.','MarkerSize', 20);
    xlim([xmin xmax])
    ylim([ymin ymax])
    xlabel('Distance [m]')
    ylabel('Height [m]')
    title('Trajectory of a projectile')
    grid on
 Z = animatedline;
% SIMULATION
while((x<=xmax) && (x>=xmin) && (y>=ymin) && (y<=ymax))
    t 	= t  + dt;      % time change
    %vx = vx;           % vx does not change during the simulations
    vy 	= vy + g*dt;    % change of the vy
    x 	= x  + dt*vx;   % new x position
    y 	= y  + dt*vy;   % new y position

    set(H,'Xdata',x,'Ydata',y); % Move object
    addpoints(Z,x,y);
    drawnow;                    % Update graphics
end