% Mark Wilkinson
% EE 6083 Aviation
% Compute TA algorithm

function wc_discrete = computeWC(inputs)
    
    s_vector = inputs(1:3);
    r_vector = inputs(4:6);
    TAU = 35;
    DMOD = 4000*0.3048;
    ZTHR = 700;
    
    s_dot = dot([s_vector(1) s_vector(2)],[s_vector(1) s_vector(2)]);
    s_sqrt = sqrt(s_dot);
    
    s_r_dot = dot([s_vector(1) s_vector(2)],[r_vector(1) r_vector(2)]);
    tau_mod = (DMOD^2 - s_sqrt^2)/s_r_dot;
    
    % solve the horizontal condition
    h_cond1 = s_sqrt <= DMOD;
    h_cond2 = s_r_dot < 0;
    h_cond3 = tau_mod <= TAU;
    h_cond4 = h_cond2 && h_cond3;
    h_cond = h_cond1 || h_cond4;
    
    % solve the vertical condition
    v_cond1 = abs(s_vector(3)) <= ZTHR;
    tcoa_szrz = -1*(s_vector(3)/r_vector(3));
    v_cond2 = tcoa_szrz <= TAU;
    v_cond3 = s_vector(3)*r_vector(3) < 0;
    v_cond4 = v_cond2 && v_cond3;
    v_cond = v_cond1 || v_cond4;
    
    wc_discrete = h_cond && v_cond;
 
end