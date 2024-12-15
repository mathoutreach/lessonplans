size(350, 50);

import triutils;

real r = -120;
pair A = (0, 1);
pair B = (cos(radians(r)), sin(radians(r))) * A;
pair C = (cos(radians(r)), sin(radians(r))) * B;
pair[] p = {A, B, C};

pair pos = (0,0);

drawtriangle(p, pos);


pos += (3, 0);
draw("$r$", (1,0)--(2,0),N, EndArrow);
pair[] q = r(p);
drawtriangle(q, pos);

pos += (3, 0);
draw("$f$", (4,0)--(5,0),N,EndArrow);
pair[] s = fl(p);
drawtriangle(s, pos);
