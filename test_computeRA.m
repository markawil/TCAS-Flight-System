% test of computeRA, TA and WC

clear, clc

% ownship = [55 24 8000];
% own_vel = [3 2 0];
% target = [54.5 21 8000];
% target_v = [3 2 0];

load('Profile1.mat')

profile.time = [];

% fill the signal vectors
for n = 1:6
    profile.o_signals(:,n) = o_profile(:,n);
    profile.t_signals(:,n) = t_profile(:,n);
end

% process each signal
% s = zeros(12,1);
% s(1:6) = profile.o_signals(1,:);
% s(7:12) = profile.t_signals(1,:);

RAs_WCs_TAs = zeros(120,3);
for n = 1:120
    
    ownship = profile.o_signals(n,1:3);
    own_vel = profile.o_signals(n,4:6);
    target = profile.t_signals(n,1:3);
    target_v = profile.t_signals(n,4:6);
    
    ftom = 0.3048;
    o_lat = ownship(1)*pi/180;
    o_long = ownship(2)*pi/180;
    o_alt = ownship(3)*ftom;
    t_lat = target(1)*pi/180;
    t_long = target(2)*pi/180;
    t_alt = target(3)*ftom;

    own_llh = [o_lat o_long o_alt];
    t_llh = [t_lat t_long t_alt];
    own_ecf = wgs_to_ecef(own_llh);
    tar_ecf = wgs_to_ecef(t_llh);

    s_vector = ec2enu([tar_ecf own_ecf own_llh]);
    r_vector = relVelocityVector([own_vel target_v]);
    ra_thresh = RA_thresholds(ownship(3));
    ta_thresh = TA_thresholds(ownship(3));

    RA = computeRA([s_vector r_vector ra_thresh]);
    TA = computeTA([s_vector r_vector ta_thresh]);
    WC = computeWC([s_vector r_vector]);
    RAs_WCs_TAs(n,1) = RA;
    RAs_WCs_TAs(n,2) = WC;
    RAs_WCs_TAs(n,3) = TA;
    
end

