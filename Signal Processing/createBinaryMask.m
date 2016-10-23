function mask = createBinaryMask(clearSound, noisySound)
    Tw = 32;    % analysis frame duration (ms) 
    Ts = Tw/8;  % analysis frame shift (ms)
    LC = -5;    % local SNR criterion (LC) 
    fs = 8000;
    [~, mask, ~] = idbm(noisySound, clearSound, fs, Tw, Ts, LC ); 
end
