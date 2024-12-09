size(50, 50);

pair pA = (0, 1);
real r = 120;
pair rot = (cos(radians(r)), sin(radians(r)));
pair pB = rot * pA;
pair pC = rot * pB;

pair p = pB;
pB = pA;
pA = p;

//dot((0,0));

draw(pA--pB--pC--cycle);


dot(pA, red);
dot(pB, blue);
dot(pC, darkgreen);


