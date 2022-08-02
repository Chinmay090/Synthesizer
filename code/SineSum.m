function xn = SineSum(A, F, P, td, fs)
t_samples=0:1/fs:td;
xn=zeros(1,numel(t_samples));
for k=1:numel(A)
    xn=xn+A(k)*sin((2*pi*F(k)*t_samples)+P(k));
end
end