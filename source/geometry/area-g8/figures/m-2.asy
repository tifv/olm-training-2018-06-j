// access ../m-common/ as common.asy

import geometry;

import common;
size(size);

point pA = (0,0), pB = (1,4), pC = (4,0);
triangle triABC = triangle(pA, pB, pC);

point
    pD1 = (2 pA + pC) / 3,
    pD  = (pA + 2 pC) / 3,
    pE1 = (2 pD + pB) / 3,
    pE  = (pD + 2 pB) / 3;

fill(pA--pB--pE--cycle, lightgray);
draw(triABC, linewidth(1));
draw(pA--pC, StickIntervalMarker(3, 1, size=msize));
draw(pB--pD ^^ pA--pE);
draw(pB--pD, StickIntervalMarker(3, 2, size=msize));

dot("$A$", pA, SW);
dot("$B$", pB, N);
dot("$C$", pC, SE);
dot(pD);
dot(pE);
dot(pD1);
dot(pE1);

label("$S$", (3incenter(pA, pB, pE) + pA + pB + pE) / 6);

