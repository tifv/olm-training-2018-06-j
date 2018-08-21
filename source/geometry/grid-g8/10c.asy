// access ../common/ as common.asy
import common;
import geometry;

size(4.0cm, 4.0cm);

drawgrid(-1, -1, +6, +6);

point
    pA = (0, 0), pB = (0, 5), pC = (5, 5), pD = (5, 0),
    pM = (2, 0), pN = (5, 2);

draw(pA--pB--pC--pD--cycle ^^ pA--pN--pB--pM--pC ^^ pM--pN, mainline);

markangle(pM, pA, pN, radius=0.6cm, n=1, mainline);
markangle(pM, pB, pN, radius=0.5cm, n=3, mainline);
markangle(pM, pC, pN, radius=0.5cm, n=2, mainline);

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);
dot("$D$", pD, SE);
dot("$M$", pM, SE-0.15E);
dot("$N$", pN, NE);


