// access ../n-common/ as common.asy

import geometry;

import common;
size(size);

point
    pA = (0, 0), pB = (2, 4), pC = (8, 4), pD = pA + pC - pB,
    pM = (pA + pB) / 2, pN = (pC + pD) / 2,
    pK = (pA + pD) / 2, pP = (pB + pC) / 2,
    pX = extension(pA, pP, pN, pB),
    pY = extension(pB, pN, pC, pK),
    pZ = extension(pM, pD, pC, pK),
    pQ = extension(pA, pP, pM, pD);

fill(pB--pP--pX--cycle, lightgray);
fill(pC--pN--pY--cycle, lightgray);
fill(pD--pK--pZ--cycle, lightgray);
fill(pA--pM--pQ--cycle, lightgray);
fill(pX--pY--pZ--pQ--cycle, darkgray);

draw(pB--pP--pX--cycle ^^ pC--pN--pY--cycle ^^ pD--pK--pZ--cycle);
draw(pA--pM--pQ--cycle ^^  pX--pY--pZ--pQ--cycle ^^ pA--pB--pC--pD--cycle);


