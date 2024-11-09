% MATLAB script to compute Fourier series of a periodic sawtooth wave 

% Period T = 2*pi 

T = 2*pi; 

omega0 = 2*pi/T;  % Fundamental frequency 

N = 20;  % Maximum number of terms to compute in the Fourier series 

t = linspace(-pi, pi, 1000);  % Time vector for plotting 

  

% Sawtooth wave definition 

x_t = @(t) t/pi;  % Sawtooth wave from -pi to pi 

  

% Initialize Fourier coefficients 

a0 = 0; 

bn = zeros(1, N); 

  

% Compute the Fourier coefficients 

for n = 1:N 

    % an coefficient (for an odd function, all a_n = 0) 

    bn(n) = (2*(-1)^(n+1)) / n;  % bn term for sawtooth wave (only odd terms contribute) 

end 

  

% Plot the original sawtooth wave 

figure; 

subplot(2, 2, 1); 

plot(t, x_t(t), 'k', 'LineWidth', 1.5); 

title('Original Sawtooth Wave'); 

xlabel('t'); 

ylabel('x(t)'); 

axis([-pi pi -1.5 1.5]); 

grid on; 

  

% Function to compute Fourier series approximation 

fourier_approx = @(t, N) a0/2 + sum(bn(1:N)' .* sin((1:N)' * omega0 .* t), 1); 

  

% Plot Fourier approximations with 5, 10, and 20 terms 

terms_to_plot = [5, 10, 20]; 

for i = 1:length(terms_to_plot) 

    N_terms = terms_to_plot(i); 

    subplot(2, 2, i+1); 

    plot(t, x_t(t), 'k', 'LineWidth', 1.5);  % Plot original sawtooth wave 

    hold on; 

    plot(t, fourier_approx(t, N_terms), 'r--', 'LineWidth', 1.5);  % Plot Fourier series approximation 

    title(['Fourier Approximation with ', num2str(N_terms), ' Terms']); 

    xlabel('t'); 

    ylabel('x(t)'); 

    axis([-pi pi -1.5 1.5]); 

    grid on; 

end 

  

% Display the convergence discussion 

disp('As the number of terms increases, the Fourier series approximation becomes closer to the original sawtooth wave.'); 

disp('However, due to the Gibbs phenomenon, oscillations near the discontinuities at t = -pi and t = pi remain.'); 