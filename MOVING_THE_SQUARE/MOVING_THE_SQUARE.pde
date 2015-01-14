float rx, ry, w, h;
void setup(){
  size(500,500);
  w = random(50,50);
  h = random(50,50);
  rx = random(0,width/2);
  ry = random(0, height/2);
}

void draw(){
  background(90,120,240,50);
  colorMode(#EA8E8E);
  fill(100,100,200,20);
  
  if(mouseX > rx && mouseX < rx+w && mouseY > ry && mouseY < ry+ h) {
    rx = random(0 , width-w);
    ry = random(0, height-h);
  }
  
  rect(rx, ry, w, h);
}
