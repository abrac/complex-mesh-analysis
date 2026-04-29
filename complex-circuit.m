clc; clear

% Mesh 1: (9-9j)*i_1 + ...
% Equation in Z*i = v

Z = [-9-9i 5 2+5i;
     5 -8+3i -3i;
     2+5i -3i -4-3i];

v = [-12;
     0;
     0];

i_mesh = Z\v;

V_c = (i_mesh(3) - i_mesh(2))*(-3i);

% Convert V_c from cartesian complex to polar
fprintf("The voltage is %f at %f degrees.\n", ...
        abs(V_c), ...
        rad2deg(angle(V_c)));