int[] x = {
  250, 150, 150, 325, 425
};
int[] y= {
  375, 150, 100, 250, 42
};
int[] sz = {
  20, 40, 55, 33, 30
};
int[] xspeed = {
  1, 3, -1, 2, 1
};
int[] yspeed= {
  4, 1, -2, 1, -5
};
 
void setup() {
  size(800, 500);
}
 
void draw() {
  background(0);
  for (int i = 0; i < x.length; i++) {
    fill(random(255));
    ellipse(x[i], y[i], sz[i], sz[i]);
 
    x[i]+=xspeed[i];
    y[i]+=yspeed[i];
 
    if (x[i] + sz[i]/2 > width || x[i] - sz[i]/2 < 0) {
      xspeed[i] *= -1;
    }
    if (y[i]+sz[i]/2 > height || y[i] - sz[i]/2 < 0) {
      yspeed[i] *= -1;
    }
  }
}
