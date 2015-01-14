int count = 35;
float []x = new float[count];
float[]y = new float[count];
void setup(){
  size(800,600);
  noStroke();
  for (int i = 0; i<35; i++){
    x[i] = random(width);
    y[i] = random(height);
  }
}
void draw(){
  background(0);
  for (int i = 0; i< count - 1; i++){
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  if 
  x[count - 1] = mouseX;
  y[count - 1] = mouseY;
  for (int i = 0; i<35; i++){
 fill(random(255), random(255), random(255));
    ellipse(x[i], y[i], i*5, i*5);
  }
}
