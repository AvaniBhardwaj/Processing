//declare and initialize variables
int x;

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  frameRate(5);
  noStroke();
}
void draw() {
  while (x<width) {
    fill(random(255), random(255), random(255));
    ellipse(x, height/2, 50, 50);
    x=x+100;
  }
}
