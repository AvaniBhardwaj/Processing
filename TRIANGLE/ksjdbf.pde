ExampleClass exampleObject;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 100);
  exampleObject = new ExampleClass(250);      //initialize exampleObject
}

void draw() {
  background(126,33,250);
  //The following code calls the methods of exampleObject
  exampleObject.move();
  exampleObject.bounce();
  exampleObject.colorShift();
  //  exampleObject.colorFlash();
  exampleObject.display();
}
