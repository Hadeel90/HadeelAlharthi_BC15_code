float r = 0;
float speed = 5;

void setup() {
  size(900, 900);
  background(0);
  smooth();
}

void draw() {
  
  float x = frameCount * 5;
  float y = 200 * sin(frameCount * 5);
  
  
  translate(width/2, height/2);
  fill(100, 100, 250);
  ellipse(x-width, y, 10, 20);
}