% Define the transfer function H(s)
numerator = 7;               % 7 in the numerator
denominator = [1, 3, 2];     % s^2 + 3s + 2 in the denominator
H = tf(numerator, denominator);

% Part (a): Find poles
poles = pole(H);
disp('Poles of the system:');
disp(poles);

% Part (b): Simulate and plot the impulse response
figure;
impulse(H);
title('Impulse Response of H(s)');
grid on;
