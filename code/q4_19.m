%% Part a

fs = 10000;
N = 5;
A = zeros(1, N);
for t = 1:N
    A(t) = 1/t^2;
end
F_notes = 50:5:100;
td_notes = ones(1, numel(F_notes));
P = zeros(1, N);
adsr = [0.2,0.2,0.7,0.4,0.2];

X0 = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);
% soundsc(X0, fs);

%% Part b

fs = 10000;
N = 5;
A = zeros(1, N);
for t = 1:N
    A(t) = 1/t^2;
end
F_notes = 100:-10:40;
td_notes = ones(1, numel(F_notes));
P = zeros(1, N);
adsr = [0.2,0.2,0.7,0.4,0.2];

X1 = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);
% soundsc(X1, fs);

%% Part c

fs = 10000;
N = 5;
A = zeros(1, N);
for t = 1:N
    A(t) = 1/t^2;
end
M = 5;
F_notes = 50 + 50*rand(1, M);
td_notes = 0.5 + rand(1,M);
P = zeros(1, N);
adsr = [0.2,0.2,0.7,0.4,0.2];

X2 = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);
% soundsc(X2, fs);

%% Part d and e

fs = 10000;
N = 5;
A = zeros(1, N);
for t = 1:N
    A(t) = 1/t^2;
end
F_notes = 50:5:130;
F_notes = [F_notes, 70];
td_notes = 0.25*ones(1, numel(F_notes) - 1);
td_notes = [td_notes, 0.75];
P = zeros(1, N);
adsr = [0.2,0.2,0.7,0.4,0.2];

X3 = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);
% soundsc(X3, fs);

audiowrite("Team19_Drop.wav", X3, fs);
