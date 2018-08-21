// access ../common/ as common.asy
import common;
import geometry;

size(0, 3cm);

point
    pA = (0, 0), pB = (0, 2), pC = (1, 2), pD = (1, 0),
    pY = (1, sqrt(3)),
    pZ = intersectionpoint(line(pB, pC), parallel(pY, (vector)dir(150)));
point pU = incenter(pA, pB, pZ), pV = reflect(line(pA, pZ)) * pU;

fill(pA--pY--pZ--cycle, grayfill);
draw(pA--pY--pZ--pC--pD--cycle, mainline);
draw(pA--pZ);

markangle(pY, pA, pZ);
perpendicularmark(line(pA, pY), line(pY, pZ), quarter=2);

