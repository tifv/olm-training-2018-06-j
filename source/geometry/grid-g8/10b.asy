// access ../common/ as common.asy
import common;
import geometry;

size(3.75cm, 0);

drawgrid(-0, -0, +5, +5, padding=0);

point
    pM = (0, 0), pN = (1, 0),
    pA = (1, 5), pB = (2, 5), pC = (3, 5), pD = (4, 5), pE = (5, 5);

draw(
    pM--pA--pN ^^ pM--pB--pN ^^ pM--pC--pN ^^ pM--pD--pN ^^ pM--pE--pN,
    mainline );

dot("$M$", pM, SSE);
dot("$N$", pN, SSE);
dot("$A$", pA, NNW);
dot("$B$", pB, NNW);
dot("$C$", pC, NNW);
dot("$D$", pD, NNW);
dot("$E$", pE, NNW);

