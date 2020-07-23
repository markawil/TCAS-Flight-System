% test of computeRA

clear, clc

ownship = [55 24 8000];
own_vel = [3 2 0];
target = [54.5 21 8000];
target_v = [3 2 0];

p180 = pi/180;
ftom = 0.3048;
o_lat = ownship(1)*p180;
o_long = ownship(2)*p180;
o_alt = ownship(3)*ftom;
t_lat = target(1)*p180;
t_long = target(2)*p180;
t_alt = target(3)*ftom;

own_llh = [o_lat o_long o_alt];
t_llh = [t_lat t_long t_alt];
own_ecf = wgs_to_ecef(own_llh);
tar_ecf = wgs_to_ecef(t_llh);

s_vector = ec2enu([tar_ecf own_ecf own_llh]);
r_vector = relVelocityVector([own_vel target_v]);
ra_thresh = RA_thresholds(ownship(3));

RA = computeRA([s_vector r_vector ra_thresh]);
