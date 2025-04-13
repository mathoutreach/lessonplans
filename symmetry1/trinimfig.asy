
int N = 6;

usersetting();

size(N * 2cm, N * 2cm);

real radius = 1.0 / N;
real dist = 0.2/N;


for(int idx = 0; idx < N; ++idx) {
    pair pos = (idx * (2*radius + dist), 0 );
    draw(circle(pos, radius));
    if(idx < N-1)
        draw(pos + (radius, 0) -- pos + (radius + dist, 0));
}


for(int idx = 0; idx < N; ++idx) {
    pair rot = (sin(radians(30)) ,cos(radians(30)) );
    pair pos = rot * (idx * (2*radius + dist), 0 );
    if(idx > 0)
        draw(circle(pos, radius));
    if(idx < N-1)
        draw((pos + rot*(radius, 0)) -- (pos + rot* (radius + dist, 0)));
}


for(int idx = 0; idx < N; ++idx) {
    pair rot = (sin(radians(-30)) ,cos(radians(-30)) );
    pair pos = (sin(radians(30)) ,cos(radians(30)) )
        * ((N-1) * (2*radius + dist), 0 )
        - rot * (idx * (2*radius + dist), 0 );
    if(idx > 0)
        draw(circle(pos, radius));
    if(idx > 0)
        draw((pos + rot*(radius, 0)) -- (pos + rot* (radius + dist, 0)));

}

