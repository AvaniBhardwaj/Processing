int a =60 ;
void setup() {
  size(800, 600);
}

void draw() {
  for (int x = a/2; x<= width; x+= a) {
    for ( int y = 0; y<= height; y+= a) {
      rect(x, y, a, a);
    }
  }
}

