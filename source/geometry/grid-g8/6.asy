// access ../common/ as common.asy
import common;
import geometry;

size(4.5cm, 3.5cm);

drawgrid(-1, -1, +7, +5);

point
    pA = (0, 0), pB = (0, 4), pC = (6, 4), pD = (6, 0),
    pM = (3, 4), pN = (6, 2),
    pP = extension(pB, pN, pD, pM);

draw(pA--pB--pC--pD--cycle ^^ pB--pN--pA--pM--pD, mainline);

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);
dot("$D$", pD, SE);
dot("$M$", pM, NW-0.15W);
dot("$N$", pN, SE);
dot("$P$", pP, NE);

