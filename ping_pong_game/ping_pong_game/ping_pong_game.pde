int x;
int y;
int corn;
int dog;
int size; 
int leftx = 20;
int lefty = 0;
int leftw = 20;
int lefth = 30;
int paddleX = width-50;


void setup() {
  background(240,125,130);
  size (1000, 750);
  x=0;
  y=0;
  corn=10;
  dog=5;
size= 50;
}

void draw() {
   fill(0);
    background(242,24,195);
rect(950,mouseY,30,150);
ellipse(x, y, size, size);
 if (mouseY<y && y<mouseY+150 && x>width-50){
corn=-corn;
 }
  x=x+corn;
  y=y+dog;

  if (y> height) {
    dog= -5;
  }
  if (x< 0) {
    corn= 10;
  }
  if ( y< 0) {
    dog= 5;
  }

 
}

