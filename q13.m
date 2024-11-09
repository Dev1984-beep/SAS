% Define the transfer function H(s)
numerator = [10, 10];        % 10(s + 1) -> [10, 10]
denominator = [1, 6, 10];    % s^2 + 6s + 10 -> [1, 6, 10]
H = tf(numerator, denominator);

% Part (a): Find poles and zeros
poles = pole(H);     % Finds the poles of H(s)
zeros = zero(H);     % Finds the zeros of H(s)

% Display poles and zeros
disp('Poles of the system:');
disp(poles);
disp('Zeros of the system:');
disp(zeros);

% Part (b): Plot the pole-zero map
figure;
pzmap(H);
title('Pole-Zero Map of H(s)');

% Part (c): Stability analysis based on pole locations
isStable = all(real(poles) < 0);  % Check if all poles have negative real parts
if isStable
    disp('The system is stable as all poles have negative real parts.');
else
    disp('The system is unstable as some poles have non-negative real parts.');
end
axis([-4 4 -4 4]);