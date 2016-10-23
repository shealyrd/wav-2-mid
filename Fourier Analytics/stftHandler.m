function spectrogram = stftHandler( x, fs)
% Inputs
%           X is the noisy speech signal as vector.
%
%           FS is the sampling frequency in Hz.
%
%           TW is the frame duration in ms.
%
%           TS is the frame shift in ms.
%           
%   Author: Kamil Wojcicki, UTD, October 2011


    L = length( x );                        % length of the speech signal
    Nw = round( fs*32*0.001 );              % frame duration (in samples)
    Ns = round( fs*4*0.001 );              % frame shift (in samples)
    nfft = 2^nextpow2( 2*Nw );              % FFT analysis length

    % divide noisy and clean speech signals into frames
    [ spectroFrames, indexes ] = vec2frames( x, Nw, Ns, 'rows', @hanning, true );
    spectrogram = fft( spectroFrames, nfft, 2 );   
end