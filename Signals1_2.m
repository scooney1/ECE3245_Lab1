%% Lab 1_2
t = 0:0.1:100;
x1 = zeros(1,1001);
x1(401:1001) = ones(1,601);
x2 = exp(-0.06*t);
figure(1)
plot(t,x1)
title('Step Function at 40 Seconds')
xlabel('Time')
ylabel('X1(t)')
figure(2)
plot(t,x2)
title('Exponential Decay Function')
xlabel('Time')
ylabel('X2(t)')

% Part (b)
y1 = t.*x1.^2;
y2 = t.*x2.^2;
figure(3)
plot(t,y1)
title('Y1(t) = t*X1^2(t)')
xlabel('Time')
ylabel('Y1(t)')
figure(4)
plot(t,y2)
title('Y2(t) = t*X2^2(t)')
xlabel('Time')
ylabel('Y2(t)')

% Part (c)
x3 = x1+x2;
y3 = t.*x3.^2;
figure(5)
plot(t,x3)
title('Sum of X1(t) and X2(t)')
xlabel('Time')
ylabel('X3(t)')
figure(6)
plot(t,y3)
hold

% Part (d)
y4 = y1+y2;
figure(6)
plot(t,y4)
title('Comparing Y3(t) and Y1(t) + Y2(t)')
xlabel('Time')
ylabel('Y(t)')
legend('Y3(t)','Y4(t)')

% Part (e)
x4= zeros(1,1001);
x4(101:1001) = x2(1:901);
y4 = t.*x4.^2;
figure(7)
plot(t,x4)
title('X4(t) = Shifted X2(t)')
xlabel('Time')
ylabel('X4(t)')
figure(8)
plot(t,y4)
hold

% Part (f)
y5 = zeros(1,1001);
y5(101:1001) = y2(1:901);
figure(8)
plot(t,y5)
title('Compare Shifted Y2(t) and Y4(t) = t*X4^2(t)')
xlabel('Time')
ylabel('Y(t)')
legend('Y4(t)','Shifted Y2(t)')