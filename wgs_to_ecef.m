% Mark Wilkinson
% EE 6083
% Converts lat, long in degrees with height in feet to 
% ECEF coordinates
% a shorter version converted from Java:
% http://danceswithcode.net/engineeringnotes/geodetic_to_ecef/geodetic_to_ecef.html

function ecef = wgs_to_ecef(wgs)
    % assuming for now the wgs coords come in as radians
    lat = wgs(1)*pi/180; 
    long = wgs(2)*pi/180;
    height = wgs(3)*pi/180;
    
    a = 6378137.0; % earth semimajor axis in meters
    e2 = 6.6943799901377997e-3;  %WGS-84 first eccentricity squared
    
    n = a/sqrt(1 - e2*sin(lat)*sin(lat));
    ecef(1) = (n + height)*cos(lat)*cos(long);
    ecef(2) = (n + height)*cos(lat)*sin(long);
    ecef(3) = (n*(1 - e2) + height)*sin(lat);
end