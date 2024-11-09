% (a) Define parameters 

f1 = 1;  % Frequency of first sinusoid (1 Hz) 

f2 = 10; % Frequency of second sinusoid (10 Hz) 

t = 0:0.01:10;  % Time vector from 0 to 10 seconds with 0.01s steps 

  

% Input signal x(t) 

x_t = sin(2*pi*f1*t) + sin(2*pi*f2*t); 

  

% Plot the input signal 

figure; 

subplot(3,1,1); 

plot(t, x_t); 

title('Input Signal x(t) = sin(2\pi f_1 t) + sin(2\pi f_2 t)'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

  

% (b) Define the impulse response h(t) = exp(-t) 

h_t = exp(-t); 

  

% Perform the convolution of x(t) and h(t) 

y_t = conv(x_t, h_t, 'same') * 0.01;  % Scaling by time step (dt = 0.01) 

  

% (c) Plot the output signal y(t) 

subplot(3,1,2); 

plot(t, y_t); 

title('Output Signal y(t) after Convolution'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

  

% (d) Plot both components of the input to observe filtering 

subplot(3,1,3); 

plot(t, sin(2*pi*f1*t), 'r', t, sin(2*pi*f2*t), 'b'); 

title('Components of Input Signal: 1 Hz (red) and 10 Hz (blue)'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

legend('1 Hz Component', '10 Hz Component'); 

grid on; 

 