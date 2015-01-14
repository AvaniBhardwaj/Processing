//declare the first GravityBall
GravityBall sebastian;
int ryan;

void setup() {
  size(1000, 1000);
  //initialize the GravityBall
  sebastian = new GravityBall();
  ryan = 17;
}

void draw() {
  background(#002CFF);
  sebastian.display();
  sebastian.move();
  sebastian.bounce();
}
class GravityBall {
  ////list information about the gravity ball
  //location
  //acceleration
  //velocity
  //size

  //declare variables
  PVector loc, vel, acc;
  float sz;

  //fill in the template with actual values
  //create a constructor
  GravityBall() {
    //inside here, we initialize variables and run any code that should occur at the moment the object is created
    loc = new PVector(width/2, 50);
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
    sz = 20;
  }
  ////////////////////////////////////////////////////////////
  //below this line, we will define what a gravity ball does//
  ////////////////////////////////////////////////////////////

  //what does a gravity ball do?
  //bounce, moves, gets drawn, accelerates(part of moving)

  void display() {
    //display the ball
    rect(loc.x, loc.y, sz, sz);
    fill(#ED6C2B);
  }

  void move() {
    //move the ball
    vel.add(acc);
    loc.add(vel);
  }

  void bounce() {
    //bounce ball off of floor
    if (loc.y > height - sz/2) {
      loc.y = height - sz/2;
      vel.y = -abs(vel.y);
    }
  }
}

