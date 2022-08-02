function [t_env,env] = envelope(a,d,s,sd,r,fs)

% For each portion of the note, determine the corresponding piece of time vector and envelope.
% Attack: amplitude linearly increases from 0 to 1 in ‘a’ seconds

t_attack = 0:1/fs:a;
env = linspace(0, 1, numel(t_attack));
t_env = t_attack;

% Decay: amplitude linearly decreases from 1 to ‘s’ in ‘d’ seconds

tdecay = (a+1/fs):1/fs:a+d;
temp = linspace(1, s, numel(tdecay));
t_env = [t_env, tdecay];
env = [env, temp];

% Sustain: amplitude stays at ‘s’ for ‘sd’ seconds

tsustain = (a+d+1/fs):1/fs:a+d+sd;
t_env = [t_env, tsustain];
temp = s*ones(1, numel(tsustain));
env = [env, temp];

% Release: amplitude linearly decreases from ‘s’ to 0 in ‘r’ seconds

trelease = (a+d+sd+1/fs):1/fs:a+d+sd+r;
t_env = [t_env, trelease];
temp = linspace(s, 0, numel(trelease));
env = [env, temp];
end