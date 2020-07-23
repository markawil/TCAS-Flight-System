% Mark Wilkinson
% EE 6083 Aviation Software
% returns the corresponding vector set of threshold values for a RA
% (Resolution Advisory) based on the input altitude.

function result = RA_thresholds(alt)
    if (alt > 1000) && (alt <= 2350)
        result = [3 15 370.4 600 300 740.8];
    elseif (alt > 2350) && (alt <= 5000)
        result = [4 20 648.2 600 300 1055.64];
    elseif (alt > 5000) && (alt <= 10000)
        result = [5 25 1018.6 600 350 1370.48];
    elseif (alt > 10000) && (alt <= 20000)
        result = [6 30 1481.6 600 400 1518.64];
    elseif (alt > 20000) && (alt <= 42000)
        result = [7 35 2037.2 700 600 1814.96];
    elseif (alt > 42000)
        result = [7 35 2037.2 800 700 1814.96];
    else
        result = zeros(1,6);
    end
end