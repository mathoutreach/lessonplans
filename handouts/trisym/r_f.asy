size(350, 50);

import triutils;

real r = -120;
pair A = (0, 1);
pair B = (cos(radians(r)), sin(radians(r))) * A;
pair C = (cos(radians(r)), sin(radians(r))) * B;
pair[] p = {A, B, C};

pair pos = (0,0);

drawtriangle(p, pos);

r(p);

pos += (3, 0);

drawtriangle(p, pos);

draw("$r$", (1,0)--(2,0), N, EndArrow);

pos += (3, 0);

f(p);

drawtriangle(p, pos);

draw("$f$", (4,0)--(5,0),N, EndArrow);

