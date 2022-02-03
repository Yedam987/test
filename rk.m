y0=[1,10,0,0];
h=0.01;   %步长
t0=0;
t1=10;
[n,y,t] = RK4(@equations,y0,h,t0,t1);
%%显示结果
title('V-S');
plot(150*y(:,3),y(:,2));

function f= equations(t,y)
k1=100;
k2=600;
k3=150;
% 四个微分方程组
%   t为时间
%   y=[x1;x2;x3;x4]
f(1)=k2*y(3)+k3*y(3)-k1*y(1)*y(2);
f(2)=k2*y(3)-k1*y(1)*y(2);
f(3)=k1*y(1)*y(2)-k2*y(3)-k3*y(3);
f(4)=k3*y(3);
f=f(:);
end

