
float speed = 7;

void setup() {
  size(1000, 600);
  noStroke();
  colorMode(HSB);
  smooth();
}

void draw() {
  background(0);
    float j = 0;
    while( j < width) {
    float x = j * 20 + cos(frameCount * speed);
    float y = 50 + sin(x * TWO_PI *2);
    fill(random(360), 100, 360, 200);
    rectMode(CENTER);
    rect(x, y+20, 10, random(height));
    rotate(PI);
    j++;
    }
    
       
  
}

void keyPressed() {
  if (keyPressed)
      if(key == ' ') {
      float j = 0;
    while( j < width) {
    float x = j * 20 + cos(frameCount * speed);
    float y = 50 + sin(x * TWO_PI *2);
    fill(random(360), 100, 360, 200);
    ellipseMode(CENTER);
    ellipse(x, y+400, 60, 60);
    rotate(PI);
    j++;
    }
  }
}