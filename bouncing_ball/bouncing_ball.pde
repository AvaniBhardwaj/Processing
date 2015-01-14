
int speed = 1;
int x = 0;

void setup() {
  size(200,200);
  smooth();
}

void draw() {
  background(255);
  move(); 
  bounce();
  display();
}


void move() { 

  x = x + speed;
}

void bounce() {
 
  if ((x > width) || (x < 0)) {
    speed = speed * - 1;
  }
}


void display() {
  stroke(0);
  fill(175);
  ellipse(x,100,32,32);
}
