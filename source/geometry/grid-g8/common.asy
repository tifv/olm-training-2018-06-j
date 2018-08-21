pen gridline = gray(0.5);
pen mainline = linewidth(1);

void drawgrid(int xmin, int ymin, int xmax, int ymax, real padding=0.5) {
  for (int i = xmin; i <= xmax; ++i) {
    draw((i,ymin-padding)--(i,ymax+padding), gridline);
  }
  for (int j = ymin; j <= ymax; ++j) {
    draw((xmin-padding,j)--(xmax+padding,j), gridline);
  }
}

