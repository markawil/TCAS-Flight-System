% Mark Wilkinson
% EE 6083 Aviation
% Calculate Relative Velocity separation vector

function r_vector = relVelocityVector(velocities)

    own_vel_east = velocities(1);
    own_vel_north = velocities(2);
    own_vel_up = velocities(3);
    traf_vel_east = velocities(4);
    traf_vel_north = velocities(5);
    traf_vel_up = velocities(6);
    
    r_vector(1) = traf_vel_east - own_vel_east;
    r_vector(2) = traf_vel_north - own_vel_north;
    r_vector(3) = traf_vel_up - own_vel_up;
end