% Mark Wilkinson
% EE 6083 Aviation Software
% go through each signal set and validate it, if any are invalid, the set
% can't be processed

function allAreValid = validateSignals(signals)
    allAreValid = [];
    invalid_found = 0;
    for n = 1:6
        value = signals(n);
        switch n
            case 1 % latitude (deg)
                if (value < -90) || (value > 90)
                    invalid_found = 1;
                end
            case 2 % longitude (deg)
                if (value < -180) || (value > 180)
                    invalid_found = 1;
                end
            case 3 % altitude (ft)
                if (value < -2000) || (value > 65000)
                    invalid_found = 1;
                end
            case 4 % velocity east
                if (value < -500) || (value > 500)
                    invalid_found = 1;
                end
            case 5 % velocity north
                if (value < -500) || (value > 500)
                    invalid_found = 1;
                end
            case 6 % velocity up
                if (value < -6000) || (value > 4500)
                    invalid_found = 1;
                end
        end
    end
    allAreValid(1) = invalid_found == 0;
end