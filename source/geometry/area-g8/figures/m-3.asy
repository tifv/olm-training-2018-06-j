// access ../m-common/ as common.asy

import geometry;

import common;
size(size);

point pA = (0,0), pB = (-1,3), pC = (4,0);
triangle triABC = triangle(pA, pB, pC);

point
    pD = (pA + pC) / 2,
    pE = (2 pA - pB);
    
fill(pA--pE--pD--cycle, lightgray);
draw(triABC, linewidth(1));
draw(pA--pC, StickIntervalMarker(2, 1, size=msize));

draw(pA--pE ^^ pD--pE);
draw(pB--pE, StickIntervalMarker(2, 2, size=msize));

dot("$A$", pA, SW);
dot("$B$", pB, N);
dot("$C$", pC, SE);
dot(pD);
dot(pE);

label("$S$", (3incenter(pA, pD, pE) + pA + pD + pE) / 6);

