% MATLAB script to compute Fourier series of a periodic square wave 

% Period T = 2*pi 

T = 2*pi; 

omega0 = 2*pi/T;  % Fundamental frequency 

N = 20;  % Maximum number of terms to compute in the Fourier series 

t = linspace(0, 2*pi, 1000);  % Time vector for plotting 

  

% Square wave definition 

x_t = @(t) (t < pi) - (t >= pi);  % Square wave with period 2*pi 

  

% Initialize Fourier coefficients 

a0 = 0; 

bn = zeros(1, N); 

  

% Compute the Fourier coefficients 

for n = 1:N 

    % an coefficient (should be zero for a square wave) 

    % Since x(t) is odd, all an are 0 

    bn(n) = (2/(n*pi)) * (1 - cos(n*pi));  % bn term for square wave 

end 

  

% Plot the square wave 

figure; 

subplot(2, 2, 1); 

plot(t, x_t(t), 'k', 'LineWidth', 1.5); 

title('Original Square Wave'); 

xlabel('t'); 

ylabel('x(t)'); 

axis([0 2*pi -1.5 1.5]); 

grid on; 

  

% Function to compute Fourier series approximation 

fourier_approx = @(t, N) a0/2 + sum(bn(1:N)' .* sin((1:N)' * omega0 .* t), 1); 

  

% Plot Fourier approximations with 5, 10, and 20 terms 

terms_to_plot = [5, 10, 20]; 

for i = 1:length(terms_to_plot) 

    N_terms = terms_to_plot(i); 

    subplot(2, 2, i+1); 

    plot(t, x_t(t), 'k', 'LineWidth', 1.5);  % Plot original square wave 

    hold on; 

    plot(t, fourier_approx(t, N_terms), 'r--', 'LineWidth', 1.5);  % Plot Fourier series approximation 

    title(['Fourier Approximation with ', num2str(N_terms), ' Terms']); 

    xlabel('t'); 

    ylabel('x(t)'); 

    axis([0 2*pi -1.5 1.5]); 

    grid on; 

end 

  

% Display the convergence discussion 

disp('As the number of terms increases, the Fourier series approximation becomes closer to the original square wave.'); 

disp('However, due to the Gibbs phenomenon, oscillations near the discontinuities (around t=0, t=pi, and t=2*pi) remain.'); 