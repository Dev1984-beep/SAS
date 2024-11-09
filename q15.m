% Define the transfer function H(s)
numerator = [1, 1];            % (s + 1) -> [1, 1]
denominator = [1, 4, 4];       % s^2 + 4s + 4 -> [1, 4, 4]
H = tf(numerator, denominator);

% Part (a): Find poles and zeros
poles = pole(H);
zeros = zero(H);
disp('Poles of the system:');
disp(poles);
disp('Zeros of the system:');
disp(zeros);

% Part (b): Plot the step response
figure;
step(H);
title('Step Response of H(s)');
grid on;

% Part (c): Generate the pole-zero map
figure;
pzmap(H);
title('Pole-Zero Map of H(s)');
grid on;
