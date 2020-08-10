% Mark Wilkinson
% EE 6083 Aviation
% tests that the relative velocity vector as described in the Project
% document can be created and returned given a set of valid inputs.

clear, clc

ownship_vel = [0 -180 0];
target_vel = [-32 -200 -1000];

vel_vector = relVelocityVector([ownship_vel target_vel]);

assert(vel_vector(1) == -32);
assert(vel_vector(2) == -20);
assert(vel_vector(3) == -1000);

disp('test passed')
