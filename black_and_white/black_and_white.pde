int barWidth = 30;
void setup(){
  size(1000,500);
}

void draw(){
  for (int i = 0; i< width; i += barWidth){
   if(mouseX > i && mouseX < i + barWidth){ 
fill(0);
} else{
  
  fill(255,255,255,10);
  frameRate(10);
}
noStroke();
 rect(i, 0, barWidth, height);
  }
  
}
