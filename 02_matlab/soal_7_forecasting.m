% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 7 — forecasting penjualan dengan barisan, deret dan sigma
% Nama: Nazla Aliza Pasya | NIM: 2510514002
% Parameter: N=2, a=0, b=2, K=3, theta0=10, alpha=0.003
% =====================================================
clc; clear; close all; a=0; b=2; K=3;
n=1:12; S=50+K*n+(-1).^n*(a+1);
fprintf('Data S:\n'); disp(S);
T1=sum(S); T2=sum(S.^2);
fprintf('T1=%d T2=%d\n',T1,T2);
G1=K; r=1+a/100;
if abs(r-1)<1e-9; S10=G1*10;
else; S10=G1*(r^10-1)/(r-1); end
fprintf('S10 (akumulasi 10 bulan)=%.2f\n',S10);
% Forecasting
t=1:12; p_coef=polyfit(t,S,1);
trend=polyval(p_coef,t);
t_pred=13:18; S_pred=polyval(p_coef,t_pred);
MAE=mean(abs(S-trend));
fprintf('Slope=%.4f Intercept=%.4f MAE=%.4f\n',p_coef(1),p_coef(2),MAE);
figure; hold on;
plot(t,S,'bo-','LineWidth',2,'DisplayName','Data Historis');
plot(t,trend,'r--','LineWidth',2,'DisplayName','Tren Linear');
plot(t_pred,S_pred,'g^-','LineWidth',2,'DisplayName','Prediksi 6 Bulan');
xlabel('Bulan'); ylabel('Penjualan (Juta Rp)');
title('Forecasting Penjualan — NIM 2510514002');
legend; grid on;
saveas(gcf,'fig_s7_forecast.png');