% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 3 — segmentasi pelanggan & komposisi fungsi harga
% Nama: Nazla Aliza Pasya | NIM: 2510514002
% Parameter: N=2, a=0, b=2, K=3, theta0=10, alpha=0.003
% =====================================================
clc; clear; close all; N=2; a=0; b=2; K=3;
A=[N,N+2,N+4,N+7,N+10,N+13,N+15];
B=[N+3,N+5,N+7,N+10,N+12,N+18];
C=[N+1,N+7,N+10,N+11,N+17,N+20];
U=N:(N+20);
AuBuC=union(union(A,B),C);
AnBnC=intersect(intersect(A,B),C);
Cc=setdiff(U,C); AuB_Cc=intersect(union(A,B),Cc);
AxorB=setxor(A,B);
fprintf('|AuBuC|=%d\n',numel(AuBuC));
fprintf('|AnBnC|=%d, elemen: ',numel(AnBnC)); disp(AnBnC);
fprintf('|(AuB)nCc|=%d\n',numel(AuB_Cc));
fprintf('|AxorB|=%d\n',numel(AxorB));
syms x
f=K*x+(a+b); g=x^2/(b+1)+a;
fog=simplify(subs(f,x,g));
gof=simplify(subs(g,x,f));
fprintf('fog='); disp(fog); fprintf('gof='); disp(gof);
syms y; finv=solve(K*y+(a+b)==x,y);
fprintf('f_inv(x)='); disp(finv);
pend=K*100+a+b; vol=double(subs(finv,x,pend));
fprintf('Volume=%d unit\n',vol);