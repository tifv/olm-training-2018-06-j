import geometry;

real size = 10cm;
size(size);
var mr = size / 13;

point pB = (0, 0), pC = (5, 0), pA = (2, 7);

triangle triABC = triangle(pA, pB, pC);

point
    pI = incenter(triABC),
    pIB = excenter(triABC.AC),
    pIC = excenter(triABC.AB),
    pB1 = bisectorpoint(triABC.AC),
    pC1 = bisectorpoint(triABC.AB);

circle circumABC = circumcircle(triABC);

point pB0 = (pI + pIB) / 2, pC0 = (pI + pIC) / 2;

point[] pMNset = intersectionpoints(circumABC, line(pB1, pC1));
point pM = pMNset[0], pN = pMNset[1];

pen darkgray = gray(0.7);
pen lightgray = gray(0.85);

draw(circumABC, darkgray+linewidth(1));
draw(circumcircle(pA, pB, pI), lightgray+linewidth(1));
draw(circumcircle(pA, pC, pI), lightgray+linewidth(1));
clipdraw(circumcircle(pI, pIB, pIC), darkgray+linewidth(1));

draw(triABC, linewidth(1));

draw(pB--pIB ^^ pC--pIC ^^ pM--pN);

markangle(pA, pC, pI, n=1, radius=mr);
markangle(pI, pC, pB, n=1, radius=0.8mr);

markangle(pC, pB, pI, n=2, radius=mr);
markangle(pI, pB, pA, n=2, radius=0.8mr);

dot(Label("$A$", pA, 2.0N));
dot(Label("$B$", pB, SSW));
dot(Label("$C$", pC, SSE));
dot(Label("$M$", pM, SW));
dot(Label("$N$", pN, SE));
dot(Label("$I$", pI, 1.5S));
dot(Label("$B_0$", pB0, 1.5N+NNE));
dot(Label("$C_0$", pC0, 1.5N+NW));
dot(Label("$B_1$", pB1, 1.7N+NE));
dot(Label("$C_1$", pC1, N+NW));
dot(Label("$I_B$", pIB, E));
dot(Label("$I_C$", pIC, WNW));

