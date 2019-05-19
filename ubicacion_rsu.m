function [rsu] = ubicacion_rsu ( )
disp('UBICACION DE RSU') 
xrsu=[]; yrsu=[];
boton=1;
while boton==1
    [xo,yo,boton]=ginput(1);
    xrsu=[xrsu xo]; yrsu=[yrsu yo];
    plot(xrsu,yrsu,'r.','markersize',25); 
    title(sprintf('RSU %d', length(xrsu))); 
end
rsu.xrsu=xrsu;
rsu.yrsu=yrsu;
end
