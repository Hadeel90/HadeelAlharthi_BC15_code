float angle;
int x = 0;
int y = 0;
int w = 100;
int h = 100;

void setup() {
  size(640, 360);
  noStroke();
  fill(255);
  rectMode(CENTER);
  frameRate(10);
}

void draw() {
  background(51);
  fill(random(360), 100, 100);
  
  if(mouseX < width/3) {
    angle --;
  } else if (mouseX > width*2/3) {
    angle ++;
  }
  
  translate(width/2, height/2);
  rotate(cos(angle));
  rect(x,y,w,h);
}