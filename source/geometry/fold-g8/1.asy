// access ../common/ as common.asy
import common;

size(4cm, 0);

pair pX = (0, 0), pA = (2, 0), pY = (3, 0);
path border = pX{dir(-50)}..{dir(-50)}(2,-1){dir(20)}..{dir(100)}pY;
pair pZ = intersectionpoints(border, pA--(pA + 5dir(-120)))[0];

draw(pX--pY, mainline);
draw(border, mainline);
draw(pA--pZ, foldline);

dot("$A$", pA, N);

