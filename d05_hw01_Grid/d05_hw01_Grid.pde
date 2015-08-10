int endY;
int endX;

void setup() {
  size(500, 500);
  frameRate(5);
  colorMode(HSB);
  endY = 0;
  endX = 0;
}

void draw() {
  background(255);
  for (int y=0; y<endY; y+=10) {
    stroke(random(360), 100, 250, 300);
    strokeWeight(5);
    line(0, y, width, y);
  }
  
  endY +=10;
  
  if (endY > height) {
    endY = 0;
  }
    
  for(int x=0; x < endX; x+=10) {
    stroke(random(360), 100, 250, 300);
    line(x, 0, x, height);
  }
  
  endX +=10;
  
  if(endX > width) {
    endX =0;
  }
}