String[] nameArray={
  "Kevin Ferreira", "Olliber", "Nick", "Avani", "Sebastian", "Jackson", "Jacy", "Emma", "Ryan"
};
int i = 0;

void setup() {
  size(800, 600);
  textSize(100);
}
void draw() {
  background(0);
  text(nameArray[i], 20, height/2);
  }
  
  void mousePressed() {
    if (mouseButton == LEFT) {
      i++;
      if (i>=nameArray.length) {
        i=0;
      }

    }
  }
