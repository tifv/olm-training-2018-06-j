// access ../common/ as common.asy
import common;
import geometry;

size(4.5cm, 4.5cm);

drawgrid(-4, -4, +4, +4);

point
    pA = (-2, -2), pB = (-2, 2), pC = (2, 2), pD = (2, -2),
    pE = (0, 2), pQ = (1, 1);

draw(pA--pB--pC--pD--cycle ^^ pA--pE ^^ pA--pC ^^ pD--pQ, mainline);

dot("$A$", pA, SW);
dot("$B$", pB, NW);
dot("$C$", pC, NE);
dot("$D$", pD, SE);
dot("$E$", pE, NW);
dot("$Q$", pQ, WNW);

