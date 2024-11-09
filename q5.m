% (a) Define x(t) = sin(2*pi*t) for 0 <= t <= 2 

t1 = 0:0.01:2;  % Time vector for x(t) 

x_t = sin(2*pi*t1);  % x(t) = sin(2*pi*t) 

  

% Define h(t) = t for 0 <= t <= 1 

t2 = 0:0.01:1;  % Time vector for h(t) 

h_t = t2;  % h(t) = t 

  

% (b) Compute the convolution y(t) = x(t) * h(t) 

y_t = conv(x_t, h_t, 'full') * 0.01;  % Scale by time step (dt = 0.01) 

  

% Time vector for y(t) after convolution (length increases due to 'full' conv) 

t_conv = linspace(0, length(y_t)*0.01, length(y_t)); 

  

% (c) Plot the original signals x(t), h(t), and the output y(t) 

figure; 

  

% Plot x(t) 

subplot(3,1,1); 

plot(t1, x_t, 'b'); 

title('Input Signal x(t) = sin(2\pi t)'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

  

% Plot h(t) 

subplot(3,1,2); 

plot(t2, h_t, 'r'); 

title('Impulse Response h(t) = t'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

  

% Plot the output signal y(t) 

subplot(3,1,3); 

plot(t_conv, y_t, 'k'); 

title('Output Signal y(t) = x(t) * h(t)'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

  

% (d) Interpretation of the convolution: 

disp('Interpretation:'); 

disp('The convolution y(t) represents the overlap between x(t) and h(t) as h(t) slides over x(t).'); 

disp('Since h(t) = t increases linearly, it acts as a ramp that weights different parts of x(t) during the convolution.'); 