void r(pair[] p) {
    pair t = p[0];
    p[0] = p[1];
    p[1] = p[2];
    p[2] = t;
}

void l(pair[] p) {
    pair t = p[2];
    p[2] = p[1];
    p[1] = p[0];
    p[0] = t;
}

void f(pair[] p) {
    pair t = p[1];
    p[1] = p[2];
    p[2] = t;
}

void fr(pair[] p) {
    pair t = p[0];
    p[0] = p[1];
    p[1] = t;
}

void fl(pair[] p) {
    pair t = p[0];
    p[0] = p[2];
    p[2] = t;
}

void drawsym(pair[] p, int symidx) {
    if(symidx == 1) 
        draw(arc((0,0),0.4, 240, -60),Arrow);
    if(symidx == 2) 
        draw(arc((0,0),0.4, -60, 240),Arrow);
    if(symidx == 3)
        draw(p[0]--0.5*(p[1]+p[2]),dashed);
    if(symidx == 4)
        draw(p[2]--0.5*(p[0]+p[1]),dashed);
    if(symidx == 5)
        draw(p[1]--0.5*(p[0]+p[2]),dashed);
}

void drawtriangle(pair[] p, pair off=(0,0)) {
    pair A = p[0];
    pair B = p[1];
    pair C = p[2];

    draw(shift(off)*(A--B--C--cycle));
    dot("1", shift(off)*A, A, red);
    dot("2", shift(off)*B, B, blue);
    dot("3", shift(off)*C, C, deepgreen);
}
