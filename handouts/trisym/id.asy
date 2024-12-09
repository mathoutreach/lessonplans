size(50, 50);

pair pA = (0, 1);
real r = 120;
pair pB = (cos(radians(r)), sin(radians(r))) * pA;
pair pC = (cos(radians(r)), sin(radians(r))) * pB;

//dot((0,0));

draw(pA--pB--pC--cycle);


dot(pA, red);
dot(pB, blue);
dot(pC, darkgreen);

