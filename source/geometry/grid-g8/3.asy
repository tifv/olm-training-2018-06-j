// access ../common/ as common.asy
import common;
import geometry;

size(4.0cm, 3.0cm);

drawgrid(-1, -1, +6, +4);

point pA = (0, 0), pB = (1, 3),
    pB1 = (4, 2), pA1 = (3, 1), pC = extension(pA, pA1, pB, pB1);

draw(pA--pB--pC--cycle, mainline);

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, ESE);

