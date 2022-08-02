% Part a

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

%% Part b

N = 5;
A = zeros(1, N);
for t = 1:N
    A(t) = 1/t^2;
end
f0 = 50;
fs = 10000;
td = 1;
P = zeros(1, N);    

X1 = harmonics(A, f0, P, td, fs);
% soundsc(X1, fs);

%% Part c

N = 15;
A = zeros(1, N);
for t = 1:N
    A(t) = 1/t;
end
f0 = 150;
fs = 10000;
td = 1;
P = zeros(1, N);    

X2 = harmonics(A, f0, P, td, fs);
% soundsc(X2, fs);

%% Part d

N = 5;
A = zeros(1, N);
for t = 1:N
    A(t) = sin((pi*t)/N);
end
f0 = 50;
fs = 10000;
td = 1;
P = zeros(1, N);    

X3 = harmonics(A, f0, P, td, fs);
soundsc(X3, fs);


%% Part e

figure(1);
scale = 0:499;
subplot(4,1,1);

plot(scale, X0(1, 1:500)); grid on; title("1/k (part a)"); xlabel("Value of n"); ylabel("Sample value");
subplot(4,1,2);

plot(scale, X1(1, 1:500)); grid on; title("1/k^2 (part b)"); xlabel("Value of n"); ylabel("Sample value");
subplot(4,1,3);

plot(scale, X2(1, 1:500)); grid on; title("1/k, N=15 (part c)"); xlabel("Value of n"); ylabel("Sample value");
subplot(4,1,4);

plot(scale, X3(1, 1:500)); grid on; title("sin((pi*k)/N) (part d)"); xlabel("Value of n"); ylabel("Sample value");

% We obsevrve that changing ak and N just affects the intensities of the
% sounds since the phase is 0 everywhere and hence we see perfect
% constructive interference