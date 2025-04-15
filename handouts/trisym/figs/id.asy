size(50, 50);

import triutils;

real r = -120;
pair A = (0, 1);
pair B = (cos(radians(r)), sin(radians(r))) * A;
pair C = (cos(radians(r)), sin(radians(r))) * B;

pair[] p = {A, B, C};

int symidx = 0;
usersetting();

if(symidx == 1)
    p = r(p);
if(symidx == 2)
    p = l(p);
if(symidx == 3)
    p = f(p);
if(symidx == 4)
    p = fr(p);
if(symidx == 5)
    p = fl(p);

drawtriangle(p);

drawsym(p, symidx);
