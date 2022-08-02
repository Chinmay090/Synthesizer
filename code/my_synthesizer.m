function yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)

yn = [];
% Loop over the notes

for ii = 1:length(F_notes)
    
% scale a,d,sd,r so that they sum to required note duration
scale=td_notes(ii)/(sum(adsr)-adsr(3));
scaled_adsr=scale*adsr;

% Compute the time vector and ADSR envelope for this note
[t,env] = envelope(scaled_adsr(1),scaled_adsr(2),scaled_adsr(3),scaled_adsr(4),scaled_adsr(5),fs);

% Compute the sum of harmonics for this note
xt = harmonics(A,F_notes(ii),P,td_notes(ii),fs);

% Modulate the sum of harmonics with the envelope
xte = xt(1:numel(t)).*env;

% Add the note to the sequence
yn = [yn,xte];
end
end