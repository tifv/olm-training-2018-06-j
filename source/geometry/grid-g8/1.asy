// access ../common/ as common.asy
import common;
import geometry;

size(5.5cm);

drawgrid(-4, -4, +6, +6);

point pA = (-2, -2), pB = (0, 4), pC = (4, 2);

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);

