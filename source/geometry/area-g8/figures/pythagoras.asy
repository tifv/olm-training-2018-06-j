import geometry;

real size = 5cm;
size(size);

point 
  pA = (0,0),
  pB = (0,1),
  pC = pA + (pB - pA) / (1, -1.8),
  pN = pA + (pC - pA) * I,
  pM = pN + (pA - pN) * I,
  pP = pC + (pB-pC) * I,
  pK = pP + (pC - pP) * I,
  pT = pA + (pB - pA) / I,
  pQ = pT + (pA - pT) / I,
  pW = projection(line(pT, pQ)) * pC,
  pR = intersectionpoint(line(pA, pB), line(pC, pW));

triangle triABC = triangle(pA, pB, pC);

point
    pD  = (2 pA + pC) / 3,
    pD1 = (pA + 2 pC) / 3;

pen lightgray = gray(0.90);
pen darkgray = gray(0.65);

fill(pA--pN--pM--pC--cycle, lightgray);
fill(pA--pT--pW--pR--cycle, lightgray);
fill(pC--pP--pK--pB--cycle, darkgray);
fill(pB--pQ--pW--pR--cycle, darkgray);

draw(triABC, linewidth(1));
draw(pC--pW--cycle);
draw(pA--pN--pM--pC--cycle);
draw(pC--pP--pK--pB--cycle);
draw(pA--pT--pQ--pB--cycle);

perpendicularmark(line(pC, pW), line(pT, pQ), quarter=3, size=0.2cm);
perpendicularmark(line(pA, pC), line(pC, pB), quarter=3, size=0.2cm);

dot("$A$", pA, unit(unit(pN-pA)+unit(pT-pA)));
dot("$B$", pB, unit(unit(pK-pB)+unit(pQ-pB)));
dot("$C$", pC, 1.5unit(unit(pM-pC)+unit(pP-pC)));

