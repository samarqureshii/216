T = 3/Fn;        % Time duration to cover three periods of the sine wave
Fs = 48000;      % Sampling frequency
N = T * Fs;      % Number of samples
t = 0 : 1/Fs : T; % Time vector
Fn = 1000;       % Frequency of the sine wave

y = sin(Fn * 2 * pi * t); % Generate the sine wave
plot(t, y);               % Plot the sine wave
axis([0 3/Fn -1 1])       % Set the axes limits
