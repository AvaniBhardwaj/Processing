void setup() {
  //declare and initialize variables
  int xhead= mouseX;
  int yhead= mouseY;
  size(500, 500);
  background(random(255), random(255), random(255));
  frameRate(10);
}
void draw() {
  background(random(255), random(255), random(255));

  //head
  fill(78, 81, 203);
  strokeWeight(3);
  ellipse(mouseX, mouseY, 300, 300);
  fill(0, 0, 0);
  ellipse(mouseX-50, mouseY-50, 50, 50);
  fill(0, 0, 0);
  ellipse(mouseX+50, mouseY-50, 50, 50);
  noFill();
  //legs
  stroke(255, 102, 0);
  stroke(0, 0, 0);
  bezier(180, 382, 150, 400, random(160, 200), 425, random(120, 160), 450);
  noFill();
  stroke(255, 102, 0);
  stroke(0, 0, 0);
  bezier(320, 382, 350, 400, 310, 425, 360, 450);
  //mouth
  strokeWeight(5);
  line(200, 300, 300, 300);
  //eyebrows
  strokeWeight(5);
  line(160, 170, 225, 170);
  line(225, 170, 225, 160);
  line(340, random(160, 180), 275, random(170, 165));
  line(275, 170, 275, 160);
  //arms
  strokeWeight(3);
  line(mouseX-150, mouseY+50, mouseX-200, mouseY+50);
  line(400, 250, 475, 190);
  //hat
  fill(0, 0, 0);
  rect(215, 90, 70, 10);
  ellipse(250, 76, 50, 50);
}

