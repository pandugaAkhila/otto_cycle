%function

function [v]=volume_change(bore,stroke,connecting_rod,r,start_crank,end_crank)
a=stroke/2;
R=connecting_rod/a;
v_swept=(pi/4)*(bore)^2*(stroke);
v_clearance=v_swept/(r-1);
theta=linspace(start_crank,end_crank,100);
x=0.5*(r-1);
y=R+1-cosd(theta);
z=(R^2-sind(theta).^2).^0.5;
v=(1+x*(y-z)).*v_clearance;
end