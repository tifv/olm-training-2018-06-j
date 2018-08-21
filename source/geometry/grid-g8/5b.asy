// access ../common/ as common.asy
import common;
import geometry;

size(5.0cm, 4.0cm);

drawgrid(-1, -1, +8, +6);

point
    pA = (0, 0), pB = (7, 0), pC = (7, 5),
    pM = (5, 0), pN = (7, 3),
    pK = extension(pA, pN, pC, pM);

draw(pA--pB--pC--cycle ^^ pA--pN ^^ pC--pM, mainline);

markangle(pA, pK, pM, radius=0.5cm, n=1, mainline);

dot("$A$", pA, SW);
dot("$B$", pB, SE);
dot("$C$", pC, NE);
dot("$M$", pM, SW-0.15W);
dot("$N$", pN, SE);
dot("$K$", pK, NW);

