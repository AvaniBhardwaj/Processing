//declare and initialize the GravityBall array
GravityBall[] g = new GravityBall[200];
//float[] numbers = new float[100];    //this is here for comparison

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(1400, 1000);
  //for each individual spot in the array, declare a new GravityBall
  for (int i = 0; i < g.length; i++) {
    g[i] = new GravityBall();
    //  numbers[i] = random(100);      //this is here for comparison
  }
}

void draw() {
  background(0);
  fill(frameCount%360, 100, 100);
  stroke(frameCount%360, 100, 50);
  //go through the array, and call the methods I want on each GravityBall
  for (int i = 0; i < g.length; i++) {
    g[i].display();
    g[i].move();
    g[i].bounce();
  }
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
    sz = 50;
    loc = new PVector(random(sz, width-sz), random(height/2));
    vel = new PVector(0, 0);
    acc = new PVector(0, .1);
  }
  ////////////////////////////////////////////////////////////
  //below this line, we will define what a gravity ball does//
  ////////////////////////////////////////////////////////////

  //what does a gravity ball do?
  //bounce, moves, gets drawn, accelerates(part of moving)

  void display() {
    //display the ball
    noStroke();
     rect(.75*loc.x,.75*loc.y, .75*sz,.75*sz);
    ellipse(loc.x, loc.y, sz, sz);
    rect(.5*loc.x, .5*loc.y, .5*sz, .5*sz);
    ellipse(.25*loc.x, .25*loc.y, .25*sz, .25*sz);
    rect(.175*loc.x, .175*loc.y, .175*sz, .175*sz);
    // fill(random(255),random(255), random(255));
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

