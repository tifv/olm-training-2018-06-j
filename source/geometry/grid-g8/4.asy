// access ../common/ as common.asy
import common;
import geometry;

size(4.5cm, 6.5cm);

drawgrid(-1, -7, +7, +5);

point pA = (0, 0), pB = (6, -2), pC = (3, 4);

draw(line(pA, pB), mainline);

dot("$A$", pA, SW);
dot("$B$", pB, NE);
dot("$C$", pC, NE);

