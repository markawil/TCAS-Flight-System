% Mark Wilkinson
% EE 6083 Aviation Software
% returns the corresponding vector set of threshold values for a RA
% (Resolution Advisory) based on the input altitude.

function result = RA_thresholds(alt)
    if (alt > 1000) && (alt <= 2350)
        result = [3 15 0.20 600 300 0.4];
    elseif (alt > 2350) && (alt <= 5000)
        result = [4 20 0.35 600 300 0.57];
    elseif (alt > 5000) && (alt <= 10000)
        result = [5 25 0.55 600 350 0.74];
    elseif (alt > 10000) && (alt <= 20000)
        result = [6 30 0.80 600 400 0.82];
    elseif (alt > 20000) && (alt <= 42000)
        result = [7 35 1.10 700 600 0.98];
    elseif (alt > 42000)
        result = [7 35 1.10 800 700 0.98];
    else
        result = zeros(1,6);
    end
end