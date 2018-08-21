// access ../common/ as common.asy
import common;
import geometry;

size(2.25cm, 0);

drawgrid(-0, -0, +3, +3, padding=0);

point
    pA = (0, 0), pB = (2, 1);

draw((3,0)--pA--(3,1) ^^ (1,3)--pB--(0,3), mainline);

dot("$A$", pA, 1.5unit(NE+NNE));
dot("$B$", pB, NE);

