%% Part a

fs = 10000;
N = 2;
A = [0.5, 0.5];
P = [0, 0];
F = [350, 440];

X0 = SineSum(A, F, P, 4, fs);
% sound(X0, fs);

%% Part b

fs = 10000;

Ab = [0.5, 0.5];
Pb = [0, 0];
Fb = [480, 620];
Ac = [0];
Pc = [0];
Fc = [0];

X1 = SineSum(Ab, Fb, Pb, 0.5, fs);
X2 = SineSum(Ac, Fc, Pc, 0.5, fs);

X3 = [X1, X2];
X4 = [X3, X3];
X5 = [X4, X4];

% sound(X5, fs);

%% Part c

fs = 10000;

Ab = [0.5, 0.5];
Pb = [0, 0];
Fb = [480, 440];
Ac = [0];
Pc = [0];
Fc = [0];

X6 = SineSum(Ab, Fb, Pb, 2, fs);
X7 = SineSum(Ac, Fc, Pc, 2, fs);

X8 = [X6, X7];
X9 = [X8, X8];
X10 = [X9, X9];

% sound(X10, fs);

%% Part d

% The sound of part a reminds us of the dial tone you get in an old
% telephone before you dial anything and are just holding the receiver
% close to your ear

% The sound of part b reminds us of the "engaged" tone when you call
% someone, like the please hold kind of tone

% The sound of part c reminds us of the "ringing" sound of an old
% telephone when you call someone

%% Part e

figure;
scale = 0:499;
subplot(3,1,1);

plot(scale, X0(1, 1:500)); grid on; title("Dial tone (part a)"); xlabel("Value of n"); ylabel("Sample value");
subplot(3,1,2);

plot(scale, X5(1, 1:500)); grid on; title("Engaged tone (part b)"); xlabel("Value of n"); ylabel("Sample value");
subplot(3,1,3);

plot(scale, X10(1, 1:500)); grid on; title("Ringing tone (part c)"); xlabel("Value of n"); ylabel("Sample value");


