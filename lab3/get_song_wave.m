function [ Z ] = get_song_wave( song, beat_length, fs )
%get_song_wave produces the time signal for a given song, beat length, and
%sampling frequency
%   song is a two column cell array of chord names and durations 

n_chords = length(song); %number of chords that get played

%for a longer song, good idea to preallocate Z instead of changing length
%each iteration, however, the code is simpler here - no calculation of song
%length (in terms of samples) required
Z = [];
    for i=1:n_chords
        Z = [Z, get_chord_wave( song{i,1}, song{i, 2}*beat_length , fs)]; %fill in the blanks!
            %appends each chord to Z
    end



window_size = 256; 
noverlap = []; 
nfft = []; 

% calculate the spectrogram
[S, F, T, P] = spectrogram(Z, window_size, noverlap, nfft, fs);

% display the spectrogram
spectrogram(Z, window_size, noverlap, nfft, fs, 'yaxis');

colormap('jet'); 
colorbar; 

% labels and title
xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram of the Signal');


end

