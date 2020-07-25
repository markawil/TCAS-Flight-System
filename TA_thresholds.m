% Mark Wilkinson
% EE 6083 Aviation Software
% returns the corresponding vector set of threshold values for a TA (Traffic
% Advisory) based on the input altitude.

function result = TA_thresholds(alt)
    if (alt > 1000) && (alt <= 2350)
        result = [3 25 611.16 850 300 740.8];
    elseif (alt > 2350) && (alt <= 5000)
        result = [4 30 888.96 850 300 1055.64];
    elseif (alt > 5000) && (alt <= 10000)
        result = [5 40 1389 850 350 1370.48];
    elseif (alt > 10000) && (alt <= 20000)
        result = [6 45 1852 850 400 1518.64];
    elseif (alt > 20000) && (alt <= 42000)
        result = [7 48 2407.6 850 600 1814.96];
    elseif (alt > 42000)
        result = [7 48 2407.6 1200 700 1814.96];
    else
        result = zeros(1,6)';
    end
end