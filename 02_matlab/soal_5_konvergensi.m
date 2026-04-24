% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 5 — konvergensi clv dan kekontinuan biaya
% Nama: Nazla Aliza Pasya | NIM: 2510514002
% Parameter: N=2, a=0, b=2, K=3, theta0=10, alpha=0.003
% =====================================================
clc; clear; close all;
syms x n; a=0; b=2; K=3;
L1=limit((x^2-K^2)/(x-K),x,K);
L2=limit((sqrt(x+(K+1)^2)-(K+1))/x,x,0);
L3=limit(((a+2)*x^3+b*x+7)/(x^3-x+K),x,inf);
L4=limit(sin((a+1)*x)*tan((b+2)*x)/x^2,x,0);
fprintf('L1=%s L2=%s L3=%s L4=%s\n',char(L1),char(L2),char(L3),char(L4));
Rn=(100*n+K)/(n+(a+b+1));
fprintf('CLV steady=%s\n',char(limit(Rn,n,inf)));
clf_diff=limit(sqrt(n^2+K*n)-sqrt(n^2+b*n),n,inf);
fprintf('Selisih CLV=%s\n',char(clf_diff));
p_val=K; q_val=1;
C=@(xv)(xv<p_val).*((xv.^2-p_val^2)./(xv-p_val))+ ...
       (xv==p_val).*p_val+(xv>p_val).*(q_val*xv+p_val);
xplot=linspace(0,2*K,500); xplot(xplot==p_val)=p_val+1e-9;
figure; plot(xplot,C(xplot),'b-','LineWidth',2); hold on;
xline(K,'r:','LineWidth',1.5); xlabel('x'); ylabel('C(x)');
title('Fungsi Biaya Piecewise — NIM 2510514002');
saveas(gcf,'fig_s5_piecewise.png');