function xn = harmonics(A, f0, P, td, fs)
F=zeros(1,numel(A));
for i=1:numel(A)
    F(i)=f0;
end
xn=SineSum(A, F, P, td, fs);
end