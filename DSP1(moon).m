clear; close all;
%practice1-1
figure;
t=-3:0.01:3;
i=find(t==0); t(i)=1;
sinc=sin(pi.*t)./(pi*t);
sinc(round(length(sinc)/2))=cos(0);
t(i)=0;
plot(t,sinc); hold on;
plot(t,(sinc).^2); hold off;
title('practice 1-1');
xlabel('time t');   ylabel('x(t)');
%practice1-2
figure;
n=-30:30;
i=find(n==0); n(i)=1;
xn=sin(0.2*pi.*n)./(pi*n);
xn(round(length(xn)/2))=0.2*cos(0);
n(i)=0;
stem(n,xn);
title('practice 1-2');
xlabel('time n');   ylabel('x[n]');
%practice1-3
figure;
f0=10;
f1=30;
Length=0.3
T=0.01;
N=Length/T;
n=0:N-1;
x1=sin(2*pi*f0*n*T);
x2=sin(2*pi*f1*n*T);
stem(n,x1+x2);
xlabel('time n');   ylabel('x[n]');
title('practice 1-3');
%title('discrete signal x[n]=xa(nT), where T=0.01 sec');
%{
stem(n,x1); hold on; stem(n,x2); hold off;
xlabel('time n');   ylabel('x[n]');
title('discrete signal x[n]=xa(nT), where T=0.01 sec');
%}
