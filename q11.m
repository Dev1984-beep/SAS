% Define the transfer function H(s) = 5 / (s^2 + 4s + 8)
numerator = 5;
denominator = [1 4 8];
H = tf(numerator, denominator);

% Simulate the step response
figure;
step(H);
title('Step Response of the System');
xlabel('Time');
ylabel('Output y(t)');
grid on;
