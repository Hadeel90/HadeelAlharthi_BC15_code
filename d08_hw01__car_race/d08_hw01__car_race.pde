color c = color(0);
PVector pos = new PVector(0,100);
PVector pos2 = new PVector(0, 450);
PVector speed = new PVector(0, 0);
PVector speed2 = new PVector(0, 0);

//float x = 0;
//float x2 = 0;
//float y = 100;
//float speed = 10;

void setup() {
  size(600, 800);
  noStroke();
  smooth();
}

void draw() {
  background(0);
  pos.add(speed);
  pos2.add(speed2);
  red();
  blue();
}

void red() {
  fill(255, 0, 0);
  rect(pos.x, pos.y, 200, 150);
  ellipseMode(CENTER);
  ellipse(pos.x+100, pos.y, 200, 200);
  
  fill(100);
  ellipse(pos.x+100, pos.y+150, 150, 150);
  
  fill(0);
  rect(pos.x+50, pos.y-50, 45, 100);
  rect(pos.x+100, pos.y-50, 45, 100);
}

void blue() {
  fill(0, 0, 255);
  rect(pos2.x, pos2.y, 200, 150);
  ellipse(pos2.x+100, pos2.y, 200, 200);
  
  fill(100);
  ellipse(pos2.x+100, pos2.y+150, 150, 150);
  
  fill(0);
  rect(pos2.x+50, pos2.y-50, 45, 100);
  rect(pos2.x+100, pos2.y-50, 45, 100);
}

void keyPressed() {
  if (key == 'a') {
    pos.add(speed);
    speed.x += 0.2;
    if (pos.x > width) {
      pos.x = 0;
    }
  }
  if (key == 'l') {
    pos2.add(speed2);
    speed2.x += 0.2;
    if (pos2.x > width) {
      pos2.x = 0;
    }
  }
}