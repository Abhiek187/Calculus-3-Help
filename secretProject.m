%This program cheeses Workshop 5, lol!

syms t %All variables must be in the form of t.
position = input('Enter displacement vector: '); %r(t)

velocity = diff(position); %r'(t)
speed = sqrt((velocity(1))^2 + (velocity(2))^2 + (velocity(3))^2); %v(t)
unit_tangent_vector = velocity/speed; %T(t)
diff_utv = diff(unit_tangent_vector); %T'(t)
magnitude_diff_utv = sqrt((diff_utv(1))^2 + (diff_utv(2))^2 + ...
    (diff_utv(3))^2); %||T'(t)||
curvature = magnitude_diff_utv/speed; %k(t)
normal_vector = diff_utv/magnitude_diff_utv; %N(t)
binormal_vector = cross(unit_tangent_vector,normal_vector); %B(t)
diff_binormal = diff(binormal_vector); %B'(t)
torsion = dot(-normal_vector,diff_binormal); %t(t)

disp('T(t)=')
simplify(unit_tangent_vector)
disp('N(t)=')
simplify(normal_vector)
disp('B(t)=')
simplify(binormal_vector)
disp('Speed is')
simplify(speed)
disp('Curvature is')
simplify(curvature)
disp('Torsion is')
simplify(torsion)