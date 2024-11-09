% Define the time vector
t = -5:0.01:12; % Choose a range of time for better visualization

% Define the original trapezoidal function x(t)
x_t = @(t) (t >= 0 & t < 2) .* t + ...
           (t >= 2 & t <= 6) .* 2 + ...
           (t > 6 & t <= 8) .* (8 - t);

% (a) Plot x(t)
subplot(5,1,1);
plot(t, x_t(t), 'LineWidth', 1.5);
title('x(t)');
xlabel('Time (t)');
ylabel('x(t)');
grid on;

% (b) Plot x(t - 3)
subplot(5,1,2);
plot(t, x_t(t + 3), 'LineWidth', 1.5); % Time shift by 3
title('x(t - 3)');
xlabel('Time (t)');
ylabel('x(t - 3)');
grid on;

% (c) Plot x(2t)
subplot(5,1,3);
plot(t, x_t(t / 2), 'LineWidth', 1.5); % Time scaling by 2
title('x(2t)');
xlabel('Time (t)');
ylabel('x(2t)');
grid on;

% (d) Plot x(t/2)
subplot(5,1,4);
plot(t, x_t(2 * t), 'LineWidth', 1.5); % Time scaling by 1/2
title('x(t/2)');
xlabel('Time (t)');
ylabel('x(t/2)');
grid on;

% (e) Plot x(2t + 3)
subplot(5,1,5);
plot(t, x_t((t + 3) / 2), 'LineWidth', 1.5); % Time scaling and shifting
title('x(2t + 3)');
xlabel('Time (t)');
ylabel('x(2t + 3)');
grid on;

% Adjust layout
sgtitle('Trapezoidal Signal and its Variations');
