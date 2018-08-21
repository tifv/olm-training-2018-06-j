// access ../common/ as common.asy
import common;
import geometry;

size(4.4cm, 0);

point
    pA = (0, 0), pB = dir(-120), pC = dir(-60),
    pB1 = 2pB - pC, pC1 = 2pC - pB,
    pM = (pB1.x, pA.y), pN = (pC1.x, pA.y),
    pU = reflect(line(pA, pB1)) * pM,
    pV = reflect(line(pA, pC1)) * pN;
point
    pI = incenter(medial(triangle(pA, pB1, pM))),
    pJ = incenter(medial(triangle(pA, pC1, pN)));

fill(pA--pB--pC--cycle, grayfill);

draw(pM--pN--pC1--pB1--cycle, mainline);
draw(pB1--pU--pA--pV--pC1);
draw(pB1--pA--pC1, foldline);

draw(pM--pN, invisible, StickIntervalMarker(2, 2));
draw(pB1--pC1, invisible, StickIntervalMarker(3, 1));

drawarrow(pI, reflect(pA, pB1) * pI, bent=dir(+20));
drawarrow(pJ, reflect(pA, pC1) * pJ, bent=dir(-20));

