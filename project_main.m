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

profile.time = [];
profile.signals(1).values = ...
    [   o_profile(:,1) o_profile(:,2) o_profile(:,3) ...
        o_profile(:,4) o_profile(:,5) o_profile(:,6) ...
        t_profile(:,1) t_profile(:,2) t_profile(:,3) ...
        t_profile(:,4) t_profile(:,5) t_profile(:,6) ...
    ];
profile.dimensions = 12;

s = profile.signals.values(30,:);
%sim('project')




