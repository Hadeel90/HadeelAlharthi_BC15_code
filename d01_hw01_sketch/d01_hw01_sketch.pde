int posX1 = 202;
int posY1 = 216;

int posX2 = 273;
int posY2 = 216;

void setup() {
  size(520, 600);
  background(0);
}

void draw() {
  background(50);
  noStroke();
  fill(255);
  rect(10, 10, 500, 580);
  
  noStroke();
  fill(238, 149, 69);
  triangle(257, 364, 380, 130, 136, 130);
  
  stroke(0);
  line(272, 300, 236, 300);
  
  noStroke();
  fill(234);
  ellipse(293, 217, 53, 27);
  ellipse(222, 217, 53, 27);
  
  fill(0);
  ellipse(posX1, posY1, 10, 10);
  posX1++;
  
  if(posX1 > 232) {
     posX1 = 202;
  }
  
  ellipse(posX2, posY2, 10, 10);
  posX2++;
  
  if(posX2 > 303) {
     posX2 = 273;
     
  }

  stroke(100);
  fill(139, 201, 227);
  ellipse(317, 163, 50, 50);
  noStroke();
  ellipse(327, 155, 45, 45);
  ellipse(336, 139, 40, 40);
  ellipse(339, 126, 35, 35);
  ellipse(337, 116, 30, 30);
  
  stroke(100);
  fill(139, 201, 227);
  ellipse(197, 163, 50, 50);
  noStroke();
  ellipse(191, 155, 45, 45);
  ellipse(183, 139, 40, 40);
  ellipse(180, 126, 35, 35);
  ellipse(183, 116, 30, 30);
  
}