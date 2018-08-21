// access ../common/ as common.asy
import common;
import geometry;

size(0, 3cm);

point
    pA = (0, 0), pB = (0, 2), pC = (1, 2), pD = (1, 0),
    pY = (1, sqrt(3)),
    pZ = intersectionpoint(line(pB, pC), parallel(pY, (vector)dir(150)));
point pU = incenter(medial(triangle(pA, pB, pZ)));

draw(pA--pB--pC--pD--cycle, mainline);
draw(pA--pZ);
drawarrow(pU, reflect(pA, pZ) * pU, bent=dir(-20));

