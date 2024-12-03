size(300,300);

int N = 12;
real bigradius = 2;
real smallradius = 0.15;

real rangle = radians(360.0 / N);

path pcircle = circle((0,0), bigradius);
//draw();

for(int idx = 0; idx < N; ++idx) {
    pair pos = bigradius * (sin(idx * rangle), cos(idx * rangle));
    //clip(circle(pos, smallradius));
    path p = circle(pos, smallradius);

    draw(p);

    draw(arc((0,0), bigradius, (idx + 2 * smallradius / bigradius )*(360/N)
	     , (idx + 1 - 2 * smallradius / bigradius)*(360/N)));
    // Close enough!
}

// TODO: instructions are to take turns removing either one token, or
// two adjacent tokens.
