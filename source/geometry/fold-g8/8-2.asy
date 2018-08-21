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

fill(pA--pM--pN--cycle, grayfill);

draw(pA--pB--pC--pD--cycle, phantomline);
draw(pA--pM--pN--cycle);
draw(pA--pDp ^^ pN--pCp);

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);
dot("$D$", pD, SE);
dot("$M$", pM, N);
dot("$N$", pN, E);
dot("$C'$", pCp, unit(pM-pA)*I);
dot("$B'=D'$", pDp, unit(NE+0.2NNE));

