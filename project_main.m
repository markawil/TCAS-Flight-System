% Mark Wilkinson
% EE 6083 Aviation Software
% 7-18-20

% Intputs:
% Ownship position in latitude [deg], longitude [deg], height [ft]
% Traffic position in latitude [deg], longitude [deg], height [ft]
% Ownship velocity in East [kts], North [kts], Up [ft/minute]
% Traffic velocity in East [kts], North [kts], Up [ft/minute]

% Outputs:
% Well-clear violation discrete (TRUE or FALSE; 1 or 0);
% TA discrete (TRUE or FALSE; 1 or 0);
% RA discrete (TRUE or FALSE; 1 or 0);

% DMOD - Horizontal distance threshold
% ZTHR - Vertical distance threshold

clc, clear

load('Profile1.mat')

profile.time = []; % not sure what this is used for yet.

% fill the signal vectors
for n = 1:6
    profile.o_signals(:,n) = o_profile(:,n);
    profile.t_signals(:,n) = t_profile(:,n);
end

% process each signal
s = profile.o_signals(1,:);
sim('project')




