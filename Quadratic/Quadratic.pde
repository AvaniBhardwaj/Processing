/* Quadratic Formula
x = (-b + sqrt(sq(b)-4*a*c))/2*a;
x = (-b - sqrt(sq(b)-4*a*c))/2*a;
*/
 
void setup() {
  showMeTheAnswer(2,9,2);
}
 
void draw() {
}
 
void showMeTheAnswer(float a, float b, float c){
  println("a is " + a + ", b is " + b + ", c is " + c + " and so your roots are " + quad1(1,7,1) + " and " + quad2(1,7,1));
}
 
float quad1(float a, float b, float c) {
  float result = (-b + sqrt(sq(b)-4*a*c))/2*a;
  return result;
}
 
float quad2(float a, float b, float c) {
  float result = (-b - sqrt(sq(b)-4*a*c))/2*a;
  return result;
}
