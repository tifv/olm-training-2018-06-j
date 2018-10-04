// access ../m-common/ as common.asy

import geometry;

import common;
size(size);

point pA = (0,0), pB = (1,4), pC = (4,0);
triangle triABC = triangle(pA, pB, pC);

point
    pD1 = (2 pA + pC) / 3,
    pD  = (pA + 2 pC) / 3,
    pE1 = (2 pB + pC) / 3,
    pE  = (pB + 2 pC) / 3,
    pF1 = (3 pA + pB) / 4,
    pF2 = (2 pA + 2 pB) / 4,
    pF  = (pA + 3 pB) / 4;

fill(pF1--pD--pE1--cycle, gray(0.90));
draw(triABC, linewidth(1));
draw(pA--pC, invisible, StickIntervalMarker(3, 1, size=msize));
draw(pA--pB, invisible, StickIntervalMarker(4, 2, size=msize));

draw(pD--pE1);
draw(pD--pF1);
draw(pF1--pE1);
draw(pB--pC, invisible, TildeIntervalMarker(3, 1, size=0.5msize));

dot(Label("$A$", pA, SW));
dot(Label("$B$", pB, N));
dot(Label("$C$", pC, SE));
dot(pD);
dot(pE);
dot(pD1);
dot(pE1);
dot(pF);
dot(pF1);
dot(pF2);

label("$S$", (3incenter(pF1, pD, pE1) + pF1 + pD + pE1) / 6);
