// access ../m-common/ as common.asy

import geometry;

import common;
size(size);

point pA = (0,0), pB = (1,4), pC = (4,0);
point
    pA1 = (4 pA + 2 pC + pB) / 7,
    pB1 = (4 pB + 2 pA + pC) / 7,
    pC1 = (4 pC + 2 pB + pA) / 7;
triangle triABC = triangle(pA, pB, pC);

fill(pA1--pB1--pC1--cycle, lightgray);
draw(triABC, linewidth(1));
draw(pA--pC1, StickIntervalMarker(2, 1, size=1.00msize));
draw(pB--pA1, StickIntervalMarker(2, 2, size=0.75msize));
draw(pC--pB1, StickIntervalMarker(2, 3, size=0.50msize));

dot("$A$", pA, SW);
dot("$B$", pB, N);
dot("$C$", pC, SE);
dot(pA1);
dot(pB1);
dot(pC1);

label("$S$", (3incenter(pA1, pB1, pC1) + pA1 + pB1 + pC1) / 6);

