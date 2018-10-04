import geometry;

real size = 4cm;
size(size);

point
    pA = (0, 0), pB = (0, 4), pC = (6, 4), pD = (6, 0),
    pM = (2, 4), pN = (6, 2.3),
    pP = extension(pB, pN, pD, pM),
    pF = intersectionpoint(line(pA, pM), line(pP, pB)),
    pR = intersectionpoint(line(pA, pN), line(pP, pD));

pen lightgray = gray(0.90);
pen darkgray = gray(0.65);

fill(pA--pF--pP--pR--cycle, lightgray);
fill(pB--pM--pF--cycle, darkgray);
fill(pM--pP--pN--pC--cycle, darkgray);
fill(pN--pD--pR--cycle, darkgray);
draw(pA--pB--pC--pD--cycle ^^ pB--pN--pA--pM--pD);

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);
dot("$D$", pD, SE);
dot("$M$", pM, N);
dot("$N$", pN, E);
dot("$P$", pP, SW);

