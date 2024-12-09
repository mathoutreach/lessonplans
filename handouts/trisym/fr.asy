size(50, 50);

pair pA = (0, 1);
real r = 120;
pair pB = (cos(radians(r)), sin(radians(r))) * pA;
pair pC = (cos(radians(r)), sin(radians(r))) * pB;

void tdraw(pair pA, pair pB, pair pC, pair pos) {
    draw(shift(pos)*(pA--pB--pC--cycle));
    dot(shift(pos)*pA, red);
    dot(shift(pos)*pB, blue);
    dot(shift(pos)*pC, deepgreen);
}

pair pos = (0,0);

tdraw(pA, pB, pC, pos);

pair p = pB;
pB = pC;
pC = p;

draw((1,0)--(1.5,0),EndArrow);

tdraw(pA, pB, pC, (2.5,0));

pair rot = (cos(radians(r)), sin(radians(r)));
pA = rot * pA;
pB = rot * pB;
pC = rot * pC;


draw((3.5,0)--(4,0),EndArrow);


tdraw(pA, pB, pC, (5,0));
