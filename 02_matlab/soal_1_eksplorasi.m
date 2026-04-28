% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 1 — Eksplorasi Awal dan Profil Data Transaksi
% Nama: Nazla Aliza Pasya | NIM: 2510514002
% Parameter: N=2, a=0, b=2, K=3, theta0=10, alpha=0.003
% =====================================================
clc; clear; close all;
% Timestamp verifikasi
disp('=== TIMESTAMP VERIFIKASI ===');
disp(datetime('now', 'Format', 'default'))
N=2; a=0; b=2; K=3;
i = 1:7;
D = 20 + (K.*i) + mod(a.*i,7) - mod(b.*i,5);
fprintf('Data D: '); disp(D);
mu=mean(D); med=median(D); mo=mode(D);
r=range(D); sigma=std(D,1);
fprintf('Mean=%.4f Median=%.4f Modus=%d\n',mu,med,mo);
fprintf('Range=%.4f StdDev=%.4f\n',r,sigma);
figure; bar(i,D,'FaceColor',[0.2 0.5 0.8]);
hold on; yline(mu,'r--','LineWidth',2);
xlabel('Nomor Toko'); ylabel('Penjualan (Juta Rp)');
title('Penjualan Per Toko — NIM 2510514002');
saveas(gcf,'fig_s1_barchart.png');
