close all;clear all; clc
load 'upb1.dat'
tic
t=upb1(:,1); x=upb1(:,2); y=upb1(:,3);
hold on
plot(upb1(:,2), upb1(:,3),'.c') 
set(gca,'xlim',[000 3000],'ylim',[5000 7000], 'view',[0 90]);
[rsu] = ubicacion_rsu ( );  
%Creación de las Circunferencias
for i=1:length(rsu.xrsu)
     o=-pi:0.01:pi;
     plot(200*cos(o)+rsu.xrsu(i),200*sin(o)+rsu.yrsu(i),':m','linewidth',2)
    pause(1);
end

for to=1:1:1000
    to
    ind=find(t==to); 
    xo=x(ind); yo=y(ind);
    mov=plot(xo,yo,'.b'); %Carrito 
    pause(0.1);
    delete(mov);
    set(gca,'xlim',[000 3000],'ylim',[5000 7000], 'view',[0 90]);
end
hold off
