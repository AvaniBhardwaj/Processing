int x;
int y;
int diaM=30;
float SpeedX;
float SpeedY;
int rightX=580;
int rightY;
int w=10;
int l=50;
int leftX=20;
int leftY=300;
int CDL;
int CDR;
int scoreRight;
int scoreLeft;
int CDRr;
int CDLl;
int pizza=1;
int a=0;
int q=0;

void setup() {
  size(600, 600);
  x=width/2;
  y=height/2;
  SpeedX=random(2, 6);
  SpeedY=random(2, 6);
  textSize(40);
  scoreRight=0;
  scoreLeft=0;
}

void draw() {
  if (pizza==1) {
    background(255);
    x+=SpeedX;
    y+=SpeedY;
    rightY=mouseY;
    noStroke();
    fill(122,122,255);
    ellipse(x, y, diaM, diaM);
    if (x+diaM/2>=width || x-diaM/2<=0) {
      SpeedX = -SpeedX;
    }
    if (y+diaM/2>=height || y-diaM/2<=0) {
      SpeedY*=-1;
    }
    rect(rightX, rightY-l/2, w, l);
    if (x+diaM/2>=rightX && y>=rightY && y<=rightY+l) {
      SpeedX=-abs(SpeedX);
    }
    rect(leftX, leftY, w, l);
    if (keyPressed) {
      if (key == 'w') {
        leftY-=15;
      }
      if (key == 's') {
        leftY+=15;
      }
    }
    if (x-diaM/2<=leftX && y>=leftY && y<=leftY+l) {
      SpeedX=abs(SpeedX);
    }
    if (CDR>0) {
      text("LEFT POINT", width/2-140, height/2);
      CDR--;
    }
    if (x+diaM/2>=width) {
      CDR=50;
      scoreLeft++;
      x=width/2;
      y=height/2;
    }
    if (CDL>0) {
      text("RIGHT POINT", width/2-140, height/2);
      CDL--;
    }
    if (x-diaM/2<=0) {
      CDL=50;
      scoreRight++;
      x=width/2;
      y=height/2;
    }
    textSize(32);
    fill(0, 0, 255);
    text("score", 240, 40);
    text(scoreRight, 350, 40);
    text(scoreLeft, 190, 40);
    if (scoreRight==2) {
      background(120,222,250);
      text("YOU WIN!", 350, 270);
      text("YOU LOSE!", 100, 270);
      x=width/2;
      y=height/2;
      SpeedX=0;
      SpeedY=0;
      if (q==0) {
        a=frameCount;
        q=1;
      }
      if (frameCount-a==200) {
        pizza=0;
      }
    }

    if (scoreLeft==2) {
      background(123,134,222);
      text("Winner", 100, 270);
      text("Loser!", 350, 270);
      x=width/2;
      y=height/2;
      SpeedX=0;
      SpeedY=0;
      if (q==0) {
        a=frameCount;
        q=1;
      }
      if (frameCount-a==200) {
        pizza=0;
      }
    }
  }
  if (pizza==0) {
    background(0);
    text("THE END", 250, 300);
    if (keyPressed) {
      if (keyCode==ENTER) {
        pizza=1;
        scoreRight=0;
        scoreLeft=0;
        SpeedX=random(2,6);
        SpeedY=random(2,6);
      }
    }
  }
}

