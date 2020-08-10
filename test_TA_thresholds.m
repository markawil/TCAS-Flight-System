% Mark Wilkinson
% EE 6083 Aviation
% tests that TA thresholds given in the Project document are
% returned from the TA_thresholds function.

alt0 = 0;
thresholds0 = TA_thresholds(alt0);

alt1 = 2000;
thresholds1 = TA_thresholds(alt1);

alt2 = 3000;
thresholds2 = TA_thresholds(alt2);

alt3 = 7000;
thresholds3 = TA_thresholds(alt3);

alt4 = 12000;
thresholds4 = TA_thresholds(alt4);

alt5 = 30000;
thresholds5 = TA_thresholds(alt5);

alt6 = 50000;
thresholds6 = TA_thresholds(alt6);

test0 = thresholds0 == [0 0 0 0 0 0];
assert(all(test0))

test1 = thresholds1 == [3 25 611.16 850 300 740.8];
assert(all(test1))

test2 = thresholds2 == [4 30 888.96 850 300 1055.64];
assert(all(test2))

test3 = thresholds3 == [5 40 1389 850 350 1370.48];
assert(all(test3))

test4 = thresholds4 == [6 45 1852 850 400 1518.64];
assert(all(test4))

test5 = thresholds5 == [7 48 2407.6 850 600 1814.96];
assert(all(test5))

test6 = thresholds6 == [7 48 2407.6 1200 700 1814.96];
assert(all(test6))