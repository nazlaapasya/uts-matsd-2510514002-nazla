% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 4 — bilangan kompleks & teorema de moivre
% Nama: Nazla Aliza Pasya | NIM: 2510514002
% Parameter: N=2, a=0, b=2, K=3, theta0=10, alpha=0.003
% =====================================================
clc; clear; close all; a=0; b=2;
z1=(a+2)+(b+1)*1i; z2=(b+1)-(a+2)*1i;
r1=abs(z1); th1=angle(z1);
r2=abs(z2); th2=angle(z2);
fprintf('z1: r=%.4f, theta=%.4f rad = %.4f deg\n',r1,th1,rad2deg(th1));
fprintf('z2: r=%.4f, theta=%.4f rad = %.4f deg\n',r2,th2,rad2deg(th2));
fprintf('z1+z2='); disp(z1+z2);
fprintf('z1*z2='); disp(z1*z2);
fprintf('z1/z2='); disp(z1/z2);
fprintf('|z1-z2|=%.4f\n',abs(z1-z2));
z1_4_DM=r1^4*exp(4i*th1);
z1_4_alg=z1^4;
fprintf('De Moivre: %.4f%+.4fi\n',real(z1_4_DM),imag(z1_4_DM));
fprintf('Aljabar:   %.4f%+.4fi\n',real(z1_4_alg),imag(z1_4_alg));
th0=deg2rad(10); % theta0=10 derajat
roots_w=zeros(1,3);
for k=0:2; roots_w(k+1)=2*exp(1i*(th0+2*pi*k)/3); end
figure; t=linspace(0,2*pi,100);
plot(2*cos(t),2*sin(t),'k--','LineWidth',1); hold on;
compass(roots_w);
title('Akar Kubik w=8cis(10°) — NIM 2510514002');
saveas(gcf,'fig_s4_kompleks.png');