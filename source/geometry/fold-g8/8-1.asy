// access ../common/ as common.asy
import common;
import geometry;

size(0, 4.5cm);

point
    pA = (0, 0), pB = (0, 1), pC = (1, 1), pD = (1, 0),
    pM = intersectionpoint(line(pB, pC), parallel(pA, dir(+60))),
    pN = intersectionpoint(line(pC, pD), parallel(pM, dir(-60))),
    pCp = reflect(pM, pN) * pC,
    pDp = reflect(pA, pN) * pD;
point
    pI1 = incenter(medial(triangle(pA, pB, pM))),
    pI2 = incenter(medial(triangle(pM, pC, pN))),
    pI3 = incenter(medial(triangle(pN, pD, pA)));

draw(pA--pB--pC--pD--cycle, mainline);
draw(pA--pM--pN--cycle, foldline);

drawarrow(pI1, reflect(pA, pM) * pI1, bent=dir(+20));
drawarrow(pI2, reflect(pM, pN) * pI2, bent=dir(+20));
drawarrow(pI3, reflect(pN, pA) * pI3, bent=dir(+20));

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);
dot("$D$", pD, SE);
dot("$M$", pM, N);
dot("$N$", pN, E);

