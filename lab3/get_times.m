function [ T ] = get_times( length, fs )
%get_times gets a vector of times from 0 to length, with frequency fs Hertz

num_samples = floor(fs*length);
T = linspace(0,length,num_samples);

end

