% Mark Wilkinson
% EE 6083 Aviation
% Conversion function for ownship and traffic ECEF to ENU coordinates
% provided by Prof. Dill

function enu = ec2enu(ece)

orgece = ece(4:6);
orgllh = ece(7:9);
ece = ece(1:3);

difece = ece - orgece;   % difference between coordinate
                         % origins

%   Rotate the difference vector into ENU coordinates

sla = sin(orgllh(1)); cla = cos(orgllh(1));
slo = sin(orgllh(2)); clo = cos(orgllh(2));

enu = [  -slo      clo      0 ; ...
       -sla*clo  -sla*slo  cla; ...
        cla*clo   cla*slo  sla] * difece';
enu = enu';