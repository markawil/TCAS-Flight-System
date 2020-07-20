% Mark Wilkinson
% EE 6083 Aviation Software
% returns the corresponding vector set of threshold values for a TA (Traffic
% Advisory) based on the input altitude.

function result = TA_thresholds(alt)
    if (alt > 1000) && (alt <= 2350)
        result = [3 25 0.33 850 300 0.4];
    elseif (alt > 2350) && (alt <= 5000)
        result = [4 30 0.48 850 300 0.57];
    elseif (alt > 5000) && (alt <= 10000)
        result = [5 40 0.75 850 350 0.74];
    elseif (alt > 10000) && (alt <= 20000)
        result = [6 45 1 850 400 0.82];
    elseif (alt > 20000) && (alt <= 42000)
        result = [7 48 1.30 850 600 0.98];
     elseif (alt > 42000)
        result = [7 48 1.30 1200 700 0.98];
    else
        result = zeros(1,6);
    end
end