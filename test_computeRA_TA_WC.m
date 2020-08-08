% Mark Wilkinson
% EE 6083 Aviation
% tests computeRA, computeTA and computeWC functions.
% correct results were derived from Prof. Dill's simulink model and
% results.

run('TCAS_system.m')

RAs = RAs_WCs_TAs(:,1);
WCs = RAs_WCs_TAs(:,2);
TAs = RAs_WCs_TAs(:,3);

% should have RA = 1 for rows 1-35
assert(all(RAs(1:35)))

% rest of the RA values should be 0
assert(~all(RAs(36:120)))

% should have WC = 1 for rows 1-29
assert(all(WCs(1:29)))

% should have WC = 0 for rows 30-120
assert(~all(WCs(30:120)))

% should have TA = 1 for rows 1-44
assert(all(TAs(1:44)))

% should have TA = 0 for rows 45-120
assert(~all(TAs(45:120)))
