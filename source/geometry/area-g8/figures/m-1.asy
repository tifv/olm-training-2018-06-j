// access ../m-common/ as common.asy

import geometry;

import common;
size(size);

point pA = (0,0), pB = (1,4), pC = (4,0);
triangle triABC = triangle(pA, pB, pC);

point
    pD  = (2 pA + pC) / 3,
    pD1 = (pA + 2 pC) / 3;

fill(pA--pB--pD--cycle, lightgray);

draw(triABC, linewidth(1));
draw(pA--pC, invisible, StickIntervalMarker(3, 1, size=msize));

draw(pB--pD);

dot("$A$", pA, SW);
dot("$B$", pB, N);
dot("$C$", pC, SE);
dot(pD);
dot(pD1);

label("$S$", (3incenter(pA, pB, pD) + pA + pB + pD) / 6);

