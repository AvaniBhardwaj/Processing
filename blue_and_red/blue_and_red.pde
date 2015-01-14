int distance = 30;

void setup(){
  size(500,500);
}
void draw(){
  distance = mouseY+1;
  for(int i = 0; i< height; i += distance){
    stroke(random (255), random(255), random(255));
    rect(0,i,width,distance);
    for(int r = 0; r<width; r+= distance){
      stroke(random (255), random(255), random(255));
      rect(0,width,i, distance);
    }
  }
}
