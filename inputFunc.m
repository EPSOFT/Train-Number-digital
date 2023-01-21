clc
clear
close all

%%%%%%%%%  input img 28*28 english Font (2 font English test / 2 font
%%%%%%%%%  Persian test )

m0 = imread('28X28/English/Arial/0.jpg');
m1 = imread('28X28/English/Arial/1.jpg');
m2 = imread('28X28/English/Arial/2.jpg');
m3 = imread('28X28/English/Arial/3.jpg');
m4 = imread('28X28/English/Arial/4.jpg');
m5 = imread('28X28/English/Arial/5.jpg');
m6 = imread('28X28/English/Arial/6.jpg');
m7 = imread('28X28/English/Arial/7.jpg');
m8 = imread('28X28/English/Arial/8.jpg');
m9 = imread('28X28/English/Arial/9.jpg');


mq0 = imread('28X28/English/Britannic/0.jpg');
mq1 = imread('28X28/English/Britannic/1.jpg');
mq2 = imread('28X28/English/Britannic/2.jpg');
mq3 = imread('28X28/English/Britannic/3.jpg');
mq4 = imread('28X28/English/Britannic/4.jpg');
mq5 = imread('28X28/English/Britannic/5.jpg');
mq6 = imread('28X28/English/Britannic/6.jpg');
mq7 = imread('28X28/English/Britannic/7.jpg');
mq8 = imread('28X28/English/Britannic/8.jpg');
mq9 = imread('28X28/English/Britannic/9.jpg');



p0 = imread('28X28/Persian/Badr/0.jpg');
p1 = imread('28X28/Persian/Badr/1.jpg');
p2 = imread('28X28/Persian/Badr/2.jpg');
p3 = imread('28X28/Persian/Badr/3.jpg');
p4 = imread('28X28/Persian/Badr/4.jpg');
p5 = imread('28X28/Persian/Badr/5.jpg');
p6 = imread('28X28/Persian/Badr/6.jpg');
p7 = imread('28X28/Persian/Badr/7.jpg');
p8 = imread('28X28/Persian/Badr/8.jpg');
p9 = imread('28X28/Persian/Badr/9.jpg');

pq0 = imread('28X28/Persian/Arshia/0.jpg');
pq1 = imread('28X28/Persian/Arshia/1.jpg');
pq2 = imread('28X28/Persian/Arshia/2.jpg');
pq3 = imread('28X28/Persian/Arshia/3.jpg');
pq4 = imread('28X28/Persian/Arshia/4.jpg');
pq5 = imread('28X28/Persian/Arshia/5.jpg');
pq6 = imread('28X28/Persian/Arshia/6.jpg');
pq7 = imread('28X28/Persian/Arshia/7.jpg');
pq8 = imread('28X28/Persian/Arshia/8.jpg');
pq9 = imread('28X28/Persian/Arshia/9.jpg');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%48*48


c0 = imread('42X42/English/Arial/0.jpg');
c1 = imread('42X42/English/Arial/1.jpg');
c2 = imread('42X42/English/Arial/2.jpg');
c3 = imread('42X42/English/Arial/3.jpg');
c4 = imread('42X42/English/Arial/4.jpg');
c5 = imread('42X42/English/Arial/5.jpg');
c6 = imread('42X42/English/Arial/6.jpg');
c7 = imread('42X42/English/Arial/7.jpg');
c8 = imread('42X42/English/Arial/8.jpg');
c9 = imread('42X42/English/Arial/9.jpg');


cq0 = imread('42X42/English/Britannic/0.jpg');
cq1 = imread('42X42/English/Britannic/1.jpg');
cq2 = imread('42X42/English/Britannic/2.jpg');
cq3 = imread('42X42/English/Britannic/3.jpg');
cq4 = imread('42X42/English/Britannic/4.jpg');
cq5 = imread('42X42/English/Britannic/5.jpg');
cq6 = imread('42X42/English/Britannic/6.jpg');
cq7 = imread('42X42/English/Britannic/7.jpg');
cq8 = imread('42X42/English/Britannic/8.jpg');
cq9 = imread('42X42/English/Britannic/9.jpg');



o0 = imread('42X42/Persian/Badr/0.jpg');
o1 = imread('42X42/Persian/Badr/1.jpg');
o2 = imread('42X42/Persian/Badr/2.jpg');
o3 = imread('42X42/Persian/Badr/3.jpg');
o4 = imread('42X42/Persian/Badr/4.jpg');
o5 = imread('42X42/Persian/Badr/5.jpg');
o6 = imread('42X42/Persian/Badr/6.jpg');
o7 = imread('42X42/Persian/Badr/7.jpg');
o8 = imread('42X42/Persian/Badr/8.jpg');
o9 = imread('42X42/Persian/Badr/9.jpg');

wq0 = imread('42X42/Persian/Arshia/0.jpg');
wq1 = imread('42X42/Persian/Arshia/1.jpg');
wq2 = imread('42X42/Persian/Arshia/2.jpg');
wq3 = imread('42X42/Persian/Arshia/3.jpg');
wq4 = imread('42X42/Persian/Arshia/4.jpg');
wq5 = imread('42X42/Persian/Arshia/5.jpg');
wq6 = imread('42X42/Persian/Arshia/6.jpg');
wq7 = imread('42X42/Persian/Arshia/7.jpg');
wq8 = imread('42X42/Persian/Arshia/8.jpg');
wq9 = imread('42X42/Persian/Arshia/9.jpg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%

r0 = imbinarize (m0);
r1 = imbinarize (m1);
r2 = imbinarize (m2);
r3 = imbinarize (m3);
r4 = imbinarize (m4);
r5 = imbinarize (m5);
r6 = imbinarize (m6);
r7 = imbinarize (m7);
r8 = imbinarize (m8);
r9 = imbinarize (m9);

r00 = imbinarize (mq0);
r01 = imbinarize (mq1);
r02 = imbinarize (mq2);
r03 = imbinarize (mq3);
r04 = imbinarize (mq4);
r05 = imbinarize (mq5);
r06 = imbinarize (mq6);
r07 = imbinarize (mq7);
r08 = imbinarize (mq8);
r09 = imbinarize (mq9);


k0=imbinarize(p0);
k1=imbinarize(p1);
k2=imbinarize(p2);
k3=imbinarize(p3);
k4=imbinarize(p4);
k5=imbinarize(p5);
k6=imbinarize(p6);
k7=imbinarize(p7);
k8=imbinarize(p8);
k9=imbinarize(p9);


k00=imbinarize(pq0);
k11=imbinarize(pq1);
k22=imbinarize(pq2);
k33=imbinarize(pq3);
k44=imbinarize(pq4);
k55=imbinarize(pq5);
k66=imbinarize(pq6);
k77=imbinarize(pq7);
k88=imbinarize(pq8);
k99=imbinarize(pq9);


cc0=imbinarize(c0);
cc1=imbinarize(c1);
cc2=imbinarize(c2);
cc3=imbinarize(c3);
cc4=imbinarize(c4);
cc5=imbinarize(c5);
cc6=imbinarize(c6);
cc7=imbinarize(c7);
cc8=imbinarize(c8);
cc9=imbinarize(c9);

cc00=imbinarize(cq0);
cc11=imbinarize(cq1);
cc22=imbinarize(cq2);
cc33=imbinarize(cq3);
cc44=imbinarize(cq4);
cc55=imbinarize(cq5);
cc66=imbinarize(cq6);
cc77=imbinarize(cq7);
cc88=imbinarize(cq8);
cc99=imbinarize(cq9);

h0=imbinarize(o0);
h1=imbinarize(o1);
h2=imbinarize(o2);
h3=imbinarize(o3);
h4=imbinarize(o4);
h5=imbinarize(o5);
h6=imbinarize(o6);
h7=imbinarize(o7);
h8=imbinarize(o8);
h9=imbinarize(o9);

h00=imbinarize(wq0);
h11=imbinarize(wq1);
h22=imbinarize(wq2);
h33=imbinarize(wq3);
h44=imbinarize(wq4);
h55=imbinarize(wq5);
h66=imbinarize(wq6);
h77=imbinarize(wq7);
h88=imbinarize(wq8);
h99=imbinarize(wq9);


D0=[r0 , r00,r1 ,r01 ]; 
D1=[k0 , k00, k1, k11];
D2=[c0 ,c00, c1,c11];
D3=[k0, k00,k11,k22];
D4=[cc0, cc00,cc1 , cc01];
D5=[h0 , h00,h1 ,h01];
D6=[wq0, o0, 01,cq1 ];
D7=[p0,pq0,p1,pq1];
D8=[cc00 , cc0 , c01,cc1];
D9=[h00, h0, h1 ,h11];



Datatest = [r0 , r00 , k0 , k00 , c0 , c00 , k0 , k00 , cc0 ,cc00, h0 , h00];

save mydata D0 D1 D2 D3 D4 D5 D6 D7 D8 D9 Datatest;
