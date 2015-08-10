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
    strokeWeight(1);
    stroke(random(360));
    line(0, y, y, width);
  }
  
  endY +=10;
  
  if (endY > height) {
    endY = 0;
  }
    
  for(int x=0; x < endX; x+=10) {
    strokeWeight(1);
    stroke(random(360));
    line(x, 0, height, x);
  }
  
  endX +=10;
  
  if(endX > width) {
    endX =0;
  }
  
  stroke(200, 200, 100);
  strokeWeight(10);
  fill(200, 200, 100);
  ellipse(width/2, height/2, 200, 200);
  
  noStroke();
  fill(0);
  ellipse(width/2, height/2, 100, 100);
}