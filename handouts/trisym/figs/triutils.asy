pair[] r(pair[] p) {
    pair[] q = new pair[3];
    q[0] = p[1];
    q[1] = p[2];
    q[2] = p[0];
    return q;
}

pair[] l(pair[] p) {
    pair[] q = new pair[3];
    q[1] = p[0];
    q[2] = p[1];
    q[0] = p[2];
    return q;
}

pair[] f(pair[] p) {
  pair[] q = new pair[3];
  q[0] = p[0];
  q[1] = p[2];
  q[2] = p[1];
  return q;
}

pair[] fr(pair[] p) {
  pair[] q = new pair[3];
  q[0] = p[1];
  q[1] = p[0];
  q[2] = p[2];
  return q;
}

pair[] fl(pair[] p) {
  pair[] q = new pair[3];
  q[0] = p[2];
  q[1] = p[1];
  q[2] = p[0];
  return q;
}

void drawsym(pair[] p, int symidx) {
    if(symidx == 1) 
        draw(arc((0,0), 0.4, 240, -60), Arrow);
    if(symidx == 2) 
        draw(arc((0,0), 0.4, -60, 240), Arrow);
    if(symidx == 3)
        draw(p[0] -- 0.5 * (p[1] + p[2]), dashed);
    if(symidx == 4)
        draw(p[2] -- 0.5 * (p[0] + p[1]), dashed);
    if(symidx == 5)
        draw(p[1] -- 0.5 * (p[0] + p[2]), dashed);
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
