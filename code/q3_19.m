%% Getting the harmonic

N = 5;
A = zeros(1, N);
for t = 1:N
    A(t) = 1/t;
end
f0 = 50;
fs = 10000;
td = 1;
P = zeros(1, N);    

X0 = harmonics(A, f0, P, td, fs);
% soundsc(X0, fs);

%% Getting the envelope

fs = 10000;

[t_env, env] = envelope(0.2,0.2,0.7,0.4,0.2,fs);
% [t_env, env] = envelope(1,1,0.7,2,1,fs);
% figure(1);
% plot(t_env, env); grid on;

% pause(10);
% soundsc(X0.*env, fs);

%% Plotting

figure;
temp = X0.*env;
scale = 1:numel(X0);
subplot(3,1,1);

plot(scale, X0); grid on; title("Harmonic"); xlabel("Value of n"); ylabel("Sample value");
subplot(3,1,2);

plot(scale, env); grid on; title("Envelope"); xlabel("Value of n"); ylabel("Sample value");
subplot(3,1,3);

plot(scale, temp); grid on; title("Enveloped Harmonic"); xlabel("Value of n"); ylabel("Sample value");
