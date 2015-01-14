void setup(){
size(500, 500);
background(random(255),random(255),random(255));
frameRate(7);
}
void draw(){
  background(random(255),random(255),random(255));
  strokeWeight(20);
line(0,0,500,500);
line(500,0,0,500);
strokeWeight(10);
line(250,0,250,500);
line(0,250,500,250);
//head
fill(78, 81, 203);
strokeWeight(3);
ellipse(250, 250, 300, 300);
fill(0, 0, 0);
ellipse(200, 200, 50, 50);
fill(255,255,255);
ellipse(210,205,25,30);
fill(0, 0, 0);
ellipse(300, 200, 50, 50);
fill(255,255,255);
ellipse(290,205,25,30);
noFill();
//legs
stroke(255, 102, 0);
stroke(0, 0, 0);
bezier(180, 382, 150, 400, random(160, 200), 425, random(120, 160), 450);
noFill();
stroke(255, 102, 0);
stroke(0, 0, 0);
bezier(320, 382, 350, 400, random(300,320), 425, random(350,370), 450);
//mouth
strokeWeight(5);
line(200, 300, 300, 300);
//eyebrows
strokeWeight(5);
line(160, 170, 225, 170);
line(225, 170, 225, 160);
line(340,random(160,180),275,random(170,165));
line(275,170,275,160);
//arms
strokeWeight(3);
line(100,random(240,260),25,random(180,200));
line(400,random(240,260), 475,random(180,200));
//hat
fill(0,0,0);
rect(215,90,70,10);
ellipse(250,76,50,50);
}
