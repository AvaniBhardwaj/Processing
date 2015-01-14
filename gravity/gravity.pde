float x, y, vX, vY, gravity;
int size = 50;
void setup() {
  size(700, 700);
  x = 120;
  y = height*.05;
  vX = 0;        
  vY = 0;      
  gravity = 1;    

 
}

void draw() {
  background(0);
fill(random(255),random(255),random(255));
  ellipse(x, y, size, size);
  vY += gravity;            
  x += vX;                    
  y += vY;                 

  if (y + size/2 > height) {    
    y = height - size/2;
    vY = -abs(vY);      
  }
}


