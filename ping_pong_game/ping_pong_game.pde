int x;
int y;
int potato;
int cheese;
int size; 
int leftx = 20;
int lefty = 0;
int leftw = 20;
int lefth = 30;

void setup() {
 background(0);
  size (1000, 750);
  x=0;
  y=0;
  potato=10;
  cheese=5;
size= 50;
}

void draw() {
   background(20,130,244);
rect(950,mouseY,30,150);
rect(50,mouseY,30,150);
ellipse(x, y, size, size);
if(mouseY<y && y<mouseY+150 && x>width-50){
  potato = -potato;
}
  x=x+potato;
  y=y+cheese;

  
  if (y > height) {
    cheese= -5;
  
  }
  if ( y < 0) {
    cheese= 5;


}
  
}  


