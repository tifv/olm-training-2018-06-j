// access ../n-common/ as common.asy

import geometry;

import common;
size(size);

point
    pA = (0, 0), pB = (2, 4), pC = (8, 4), pD = pA + pC - pB,
    pM = (2.3, 2.5), pN = (5.7, 2.7),
    pX = extension(pN, pB, pC, pM),
    pY = extension(pA, pN, pM, pD);

fill(pA--pY--pD--cycle, lightgray);
fill(pB--pX--pC--cycle, lightgray);
fill(pX--pN--pY--pM--cycle, darkgray);
fill(pA--pB--pM--cycle, darkgray);
fill(pD--pN--pC--cycle, darkgray);

draw(pA--pM--pC--pN--cycle ^^  pB--pN--pD--pM--cycle ^^ pA--pB--pC--pD--cycle);

