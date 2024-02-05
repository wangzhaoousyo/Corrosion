//Concrete
Point(1)={0,0,0};
Point(2)={0.2,0,0};
Point(3)={0.2,0.1,0};
Point(4)={0,0.1,0};

Line(1)={1,2};
Line(2)={2,3};
Line(3)={3,4};
Line(4)={4,1};
Transfinite Curve{1}=21 Using Progression 1;
Transfinite Curve{2}=11 Using Progression 1;
Transfinite Curve{3}=21 Using Progression 1;
Transfinite Curve{4}=11 Using Progression 1;

Curve Loop(1)={1,2,3,4};
Surface(1)={1};
Physical Surface("Botom") = {1};
Transfinite Surface{1}; Recombine Surface{1};

v[]=Extrude{0,0,0.1} {Surface{1};Layers{10,1};Recombine;};
Physical Volume("Block")  = {v[]};

//Rebar1
P1=newp; Point(P1)={0.055,0.055,0};
P2=newp; Point(P2)={0.055,0.055,0.1};
L1=newc; Line(L1)={P1,P2};
Physical Line("Bar1")  = {L1};

//Rebar2
P3=newp; Point(P3)={0.145,0.055,0};
P4=newp; Point(P4)={0.145,0.055,0.1};
L2=newc; Line(L2)={P3,P4};
Physical Line("Bar2")  = {L2};