int x;
int y;
int potato;
int saboo;
void setup() {
 background(0);
  size (1000, 750);
  x=0;
  y=0;
  potato=10;
  saboo=5;

}

void draw() {
   background(20,130,244);
ellipse(500,350,200,200);
ellipse(x, y, 50, 50);
  x=x+potato;
  y=y+saboo;
  if (x > width) {
    potato= -10;
  }
  if (y > height) {
    saboo= -5;
  }
  if (x < 0) {
    potato= 10;
  }
  if ( y < 0) {
    saboo= 5;
  }
  if (x > 350){
    fill(#F5070F);}
    if (x < 200){
      fill(#07F530);}
      if (y > 350){
        fill(#07DFF5);}
        if (y < 200){
          fill(#AD07F5);}
}

