% Mark Wilkinson
% EE 6083 Aviation
% tests that RA thresholds given in the Project document are
% returned from the RA_thresholds function

alt0 = 0;
thresholds0 = RA_thresholds(alt0);

alt1 = 2000;
thresholds1 = RA_thresholds(alt1);

alt2 = 3000;
thresholds2 = RA_thresholds(alt2);

alt3 = 7000;
thresholds3 = RA_thresholds(alt3);

alt4 = 12000;
thresholds4 = RA_thresholds(alt4);

alt5 = 30000;
thresholds5 = RA_thresholds(alt5);

alt6 = 50000;
thresholds6 = RA_thresholds(alt6);

test0 = thresholds0 == [0 0 0 0 0 0];
assert(all(test0))

test1 = thresholds1 == [3 15 370.4 600 300 740.8];
assert(all(test1))

test2 = thresholds2 == [4 20 648.2 600 300 1055.64];
assert(all(test2))

test3 = thresholds3 == [5 25 1018.6 600 350 1370.48];
assert(all(test3))

test4 = thresholds4 == [6 30 1481.6 600 400 1518.64];
assert(all(test4))

test5 = thresholds5 == [7 35 2037.2 700 600 1814.96];
assert(all(test5))

test6 = thresholds6 == [7 35 2037.2 800 700 1814.96];
assert(all(test6))