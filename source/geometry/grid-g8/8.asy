// access ../common/ as common.asy
import common;
import geometry;

size(4.5cm, 4.5cm);

drawgrid(-4, -4, +4, +4);

point
    pA = (-3, -1), pB = (-1, 2), pC = (2, 3),
    pD = -pA, pE = -pB, pF = -pC;

draw(pA--pB--pC--pD--pE--pF--cycle, mainline);

dot("$A$", pA, NW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);
dot("$D$", pD, SE);
dot("$E$", pE, SE);
dot("$F$", pF, SW);

