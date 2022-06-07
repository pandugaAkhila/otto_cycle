prompt1='bore'
bore=input(prompt1)
prompt2='stroke'
stroke=input(prompt2)
prompt3='compression ratio'
r=input(prompt3)
v_swept=(pi/4)*(bore)^2*(stroke)
v_clearance=v_swept/(r-1)
v1=v_swept+v_clearance
v2=v_clearance
prompt4='adabatic constant'
k=input(prompt4)
prompt5='P1'
p1=input(prompt5)
prompt6='T1'
T1=input(prompt6)
prompt7='T3'
T3=input(prompt7)
p2=p1*(r)^k
T2=(p2*v2*T1)/(p1*v1)
p3=(p2*T3)/T2
v4=v1
v3=v2
T4=T3/(r)^(k-1)
p4=p1*T4/T1
plot(v1,p1,'*','color','r')
hold on
plot(v2,p2,'*','color','r')
plot(v3,p3,'*','color','r')
plot(v4,p4,'*','color','r')
plot([v2 v3],[p2 p3],'color','b')
plot([v3 v4],[p3 p4],'color','g')
plot([v1 v2],[p1 p2],'color','g')
plot([v4 v1],[p4 p1],'color','b')
xlabel('volume(m^3)')
ylabel('pressure(pa)')
efficiency=1-(1/r^(k-1))
