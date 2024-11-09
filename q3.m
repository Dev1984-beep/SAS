% Define the time vector for both signals 

t = 0:0.01:10; % Adjust the range of time for good visualization 

  

% (a) Define the square wave input signal x(t) 

x_t = @(t) (t >= 0 & t < 5); % Square pulse between 0 and 5 

  

% Define the impulse response h(t) 

h_t = @(t) exp(-2 * t) .* (t >= 0); % Impulse response for t >= 0 

  

% (b) Perform the convolution of x(t) and h(t) 

dt = t(2) - t(1); % Time step 

conv_result = conv(x_t(t), h_t(t), 'same') * dt; % Convolution 

  

% (c) Plot the input signal, impulse response, and output signal 

  

figure; 

  

% Plot input signal x(t) 

subplot(3,1,1); 

plot(t, x_t(t), 'LineWidth', 1.5); 

title('Input Signal x(t)'); 

xlabel('Time (t)'); 

ylabel('x(t)'); 

grid on; 

  

% Plot impulse response h(t) 

subplot(3,1,2); 

plot(t, h_t(t), 'LineWidth', 1.5); 

title('Impulse Response h(t)'); 

xlabel('Time (t)'); 

ylabel('h(t)'); 

grid on; 

  

% Plot output signal y(t) after convolution 

subplot(3,1,3); 

plot(t, conv_result, 'LineWidth', 1.5); 

title('Output Signal y(t) = x(t) * h(t)'); 

xlabel('Time (t)'); 

ylabel('y(t)'); 

grid on; 

  

% Adjust layout 

sgtitle('System Response to Square Wave Input'); 