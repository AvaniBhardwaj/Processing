void setup(){
  size(500,500);
}

void draw(){
  background(255);
  fill(123,231,255,200);
  if(mouseX<300 && mouseX> 200 && mouseY>200 && mouseY<300){
    rect(300,300,100,100);
  } else{
    rect(200,200,100,100);
  }
}
