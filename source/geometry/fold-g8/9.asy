// access ../common/ as common.asy
import common;
import geometry;

size(3cm);

point
    pA = (0, 0), pB = dir(60), pC = (1, 0),
    pU = (0.3, 0);
line lf = bisector(pB, pU);
point
    pX = intersectionpoint(lf, line(pA, pB)),
    pY = intersectionpoint(lf, line(pB, pC));

fill(pX--pU--pY--cycle, grayfill);

draw(pA--pX--pU--pY--pC--cycle, mainline);
draw(pX--pY);
draw(pX--pB--pY, phantomline);

