boolean shape=true;
void setup() {
  size(1000, 1000); 
  textSize(100);
  rectMode(CENTER);
}

void draw() {
  text("Mustang", 150, 150);
  if (shape) {
    rect(mouseX, mouseY, random(20, 50), random(20, 50));
  } else {
    ellipse(mouseX, mouseY, random(20, 50), random(20, 50));
  }
}
void mousePressed() {
  background(0);
  fill(random(255), random(255), random(255));
  if (shape) {
    shape=false;
    background(#FFFFFF);
  } else {
    shape=true; 
    fill(random(255), random(255), random(255));
  }
}

