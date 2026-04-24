% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 6 — optimasi harga produk via gradient descent
% Nama: Nazla Aliza Pasya | NIM: 2510514002
% Parameter: N=2, a=0, b=2, K=3, theta0=10, alpha=0.003
% =====================================================
clc; clear; close all; a=0; b=2; K=3; alpha_lr=0.003;
pi_fn=@(x) -(a+1)*x.^3+(b+5)*K*x.^2+100*x-K^2*10;
dpi=@(x) -3*(a+1)*x.^2+(2*(b+5)*K)*x+100;
% Gradient Descent 500 iterasi
x_gd=1; hist_x=zeros(500,1); hist_pi=zeros(500,1);
for k=1:500
  hist_x(k)=x_gd; hist_pi(k)=pi_fn(x_gd);
  x_gd=x_gd+alpha_lr*dpi(x_gd);
end
fprintf('x* GD = %.6f\n',x_gd);
figure; plot(1:500,hist_pi,'b-','LineWidth',2);
xlabel('Iterasi'); ylabel('pi(x_k)');
title('Konvergensi GD — NIM 2510514002');
% Sensitivitas alpha
alphas=[alpha_lr,10*alpha_lr,0.1*alpha_lr];
labels={'alpha normal','10x alpha','0.1x alpha'};
figure; hold on;
for i=1:3; xv=1; hp=zeros(200,1);
  for k=1:200; hp(k)=pi_fn(xv); xv=xv+alphas(i)*dpi(xv); end
  plot(1:200,hp,'LineWidth',2); end
legend(labels); title('Sensitivitas Learning Rate');
saveas(gcf,'fig_s6_gd.png');