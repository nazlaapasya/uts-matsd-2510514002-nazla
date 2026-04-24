% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 2 — Enkripsi citra logo dengan invers matriks 3x3 
% Nama: Nazla Aliza Pasya | NIM: 2510514002
% Parameter: N=2, a=0, b=2, K=3, theta0=10, alpha=0.003
% =====================================================
clc; clear; close all; a=0; b=2;
A=[a+1,a,2; 1,a+2,b; b,1,a+3];
fprintf('det(A)=%.0f\n',det(A));
% Kofaktor manual via loop nested
n=3; C=zeros(3);
for i=1:n; for j=1:n
  rows=setdiff(1:n,i); cols=setdiff(1:n,j);
  C(i,j)=(-1)^(i+j)*det(A(rows,cols));
end; end
Adj=C'; A_inv=Adj/det(A);
err=norm(A_inv-inv(A),'fro');
fprintf('Frobenius error=%.2e\n',err);
P=[120,50+a,200; 80,a+2,10+b; 30+b,90,170];
E=A*P; P_dec=A_inv*E;
fprintf('Error dekripsi=%.2e\n',norm(P_dec-P,'fro'));
figure; subplot(1,2,1); imshow(uint8(P),[]); title('Piksel Asli P');
subplot(1,2,2); imshow(uint8(mod(abs(E),256)),[]); title('Terenkripsi E');
saveas(gcf,'fig_s2_citra.png');