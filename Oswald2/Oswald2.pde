size(500, 500);
background(255, 255, 255);
//head

fill(78, 81, 203);
strokeWeight(3);
ellipse(250, 250, 300, 300);
fill(0, 0, 0);
ellipse(200, 200, 50, 50);
fill(0, 0, 0);
ellipse(300, 200, 50, 50);
noFill();
//legs
stroke(255, 102, 0);
stroke(0, 0, 0);
bezier(180, 382, 150, 400, 180, 425, 140, 450);
noFill();
stroke(255, 102, 0);
stroke(0, 0, 0);
bezier(320, 382, 350, 400, 310, 425, 360, 450);
//mouth
strokeWeight(5);
line(200, 300, 300, 300);
//eyebrows
strokeWeight(5);
line(160, 170, 225, 170);
line(225, 170, 225, 160);
line(340,170,275,170);
line(275,170,275,160);
//arms
strokeWeight(3);
line(100,250,25,190);
line(400, 250, 475, 190);


