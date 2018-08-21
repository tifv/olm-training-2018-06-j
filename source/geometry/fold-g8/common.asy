pen grayfill = gray(0.85);

pen mainline = linewidth(1.0);
pen foldline = dashed;
pen phantomline = gray(0.5);

void drawarrow(pair pA, pair pB, pair bent=dir(20)) {
    pair d = unit(pB - pA);
    draw(pA{d*bent}..{d/bent}pB, Arrow(SimpleHead));
}

