%input for Velocity vs Drag Force
c=0.8;
v=linspace(1,50,50);
Roh=1.225;
A=1;


%formulae
D=0.5*c*Roh*A*(v.^2);


%plot
figure(1)
plot(v,D);
xlabel('Velocity(m/s)');
ylabel('Drag Force(N)');
title('Velocity vs Drag Force');

%input for Drag coefficient vs Drag Force
c=linspace(0.6,1.1,5);
v=20;

%formulae
D=0.5*c*Roh*A*(v.^2);

%plot
figure(2)
plot(c,D);
xlabel('Drag Co-efficient');
ylabel('Drag Force(N)');
title('Drag Co-efficient vs Drag Force');