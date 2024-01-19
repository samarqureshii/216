
[bass, fs] = audioread('bass.wav');
guitar = audioread('guitar.wav');
drums = audioread('drums.wav');

%length guitar = 4593084
%fs = 44100
%duration = number of samples / sampling frequency = 4593084/44100 =
%104.2 sec = 1min 44 sec

duration = 5;
b = bass(1:fs*duration);
g = guitar(1:fs*duration);
d = drums(1:fs*duration);

%sound(b, fs);


ramp = linspace(0, 2, fs*duration); %with fs*duration equally-spaced points

comp = ramp'.* b + ramp'.* g + ramp'.* d;
sound(comp, fs);