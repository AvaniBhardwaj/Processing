
int i = 0;
String[]nameArray ={"Avani","Olliber","Nick","Kevin","Saboo","Avani","Ryan","Chelsie","Jackson","Kyle"};
void setup(){
  size(800,800);
  textSize(100);
rectMode(CENTER);
background(0);
}

void draw(){
background(0);
for (int i = 0; i<nameArray.length; i++){
  textSize(20);
  text(nameArray[i],5,15*i);
}
}
void mousePressed(){
  if(i>=nameArray.length){
    i = 0;
  }
}
