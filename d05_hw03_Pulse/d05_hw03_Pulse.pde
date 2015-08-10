int endI;

void setup() {
  size(500, 100);
  frameRate(10);
  endI = 0;
}

void draw() {
  
  background(0);

float a = 0;
float inc = TWO_PI/25;


for (int i = 0; i < endI; i+=2) {
  stroke(255);
  line(i, 50, i, 50+tan(a)*2);
  a+=inc;
}

endI +=10;

if (endI > width) {
  endI = 0;
}

}