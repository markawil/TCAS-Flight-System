% Mark Wilkinson
% EE 6083 Aviation
% tests the code and simulink model for converting WGS coordinates
% and outputting ENU target with ownship for the separation vector.

clear, clc

ftom = 0.3048;
own_lat = 40;
own_long = 60;
own_height = 20000;
traf_lat = 40;
traf_long = 60;
traf_height = 15000;

own_llh = [own_lat*pi/180 own_long*pi/180 own_height*ftom];
t_llh = [traf_lat*pi/180 traf_long*pi/180 traf_height*ftom];
own_ecf = wgs_to_ecef(own_llh);
tar_ecf = wgs_to_ecef(t_llh);

s_vector = ec2enu([tar_ecf own_ecf own_llh]')

% test the simulink model example as well
sim("test_ENU");