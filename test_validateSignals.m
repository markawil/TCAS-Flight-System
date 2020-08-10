% Mark Wilkinson
% EE 6083 Aviation Software
% test that the validation of signals function returns an expected
% discrete yes or no if the set of signals meet the requirements criteria
% for valid processing in the TCAS system.

invalid_lat = 120;
invalid_long = 200;
invalid_alt = -3000;
invalid_vel_east = 600;
invalid_vel_north = -600;
invalid_vel_up = 5000;

valid_lat = 40;
valid_long = 60;
valid_alt = 5000;
valid_vel_east = 100;
valid_vel_north = 100;
valid_vel_up = 1000;

invalid_lat_set = [invalid_lat valid_long valid_alt valid_vel_east valid_vel_north valid_vel_up];
invalid_long_set = [valid_lat invalid_long valid_alt valid_vel_east valid_vel_north valid_vel_up];
invalid_alt_set = [valid_lat valid_long invalid_alt valid_vel_east valid_vel_north valid_vel_up];
invalid_vel_east_set = [valid_lat valid_long valid_alt invalid_vel_east valid_vel_north valid_vel_up];
invalid_vel_north_set = [valid_lat valid_long valid_alt valid_vel_east invalid_vel_north valid_vel_up];
invalid_vel_up_set = [valid_lat valid_long valid_alt valid_vel_east valid_vel_north invalid_vel_up];

all_valid_set = [valid_lat valid_long valid_alt valid_vel_east valid_vel_north valid_vel_up];

assert(validateSignals(invalid_lat_set) == 0);
assert(validateSignals(invalid_long_set) == 0);
assert(validateSignals(invalid_alt_set) == 0);
assert(validateSignals(invalid_vel_east_set) == 0);
assert(validateSignals(invalid_vel_north_set) == 0);
assert(validateSignals(invalid_vel_up_set) == 0);
assert(validateSignals(all_valid_set) == 1);
