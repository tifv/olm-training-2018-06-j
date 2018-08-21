// access ../common/ as common.asy
import common;
import geometry;

size(4.5cm, 3.5cm);

drawgrid(-1, -3, +7, +3);

point
    pA = (0, 0), pB = (2, 0), pC = (4, 0),
    pG = (6, 2), pH = (6, 0);

draw(pA--pH ^^ pG--pA ^^ pG--pB ^^ pG--pC ^^ pG--pH, mainline);

markangle(pH, pA, pG, radius=0.5cm, n=1, mainline);
markangle(pH, pB, pG, radius=0.5cm, n=2, mainline);
markangle(pH, pC, pG, radius=0.5cm, n=3, mainline);

