int barWidth = 2;
void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  for (int x=0; x<= width; x += barWidth) {
    if (mouseX > x && mouseY <= x + barWidth){
      fill(255,0,0);
    } else{
      fill(0,20,255);
    }
    rect(x,0, barWidth, height);
  }
}
