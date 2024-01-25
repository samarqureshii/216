T=1;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : T;
Fn = 500;
y = sin(Fn*2*pi*t);
sound(y,Fs);