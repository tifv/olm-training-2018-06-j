// access ../common/ as common.asy
import common;
import geometry;

size(0, 3.5cm);

point
    pA = (0, 0), pB = (0, 3), pC = (2, 3), pD = (2, 0),
    pX = (0, 2), pU = (1, 0),
    pY = intersectionpoint(bisector(pU, pC), line(pC, pD)),
    pV = reflect(line(pX, pY)) * pB,
    pW = extension(pX, pA, pU, pV);

fill(pX--pY--pU--pV--cycle, grayfill);

draw(pA--pB--pC--pD--cycle, mainline);
draw(pX--pV--pU--pY ^^ pX--pY);

draw(pA--pD, invisible, StickIntervalMarker(2, 1, size=0.3cm));

label("I", incenter(pX, pV, pW));
label("II", incenter(pA, pU, pW));

