float[] posX = new float[0];
float[] posY = new float[0];


void setup() {
  size(900, 500);
  colorMode(HSB);
}


void draw() {
  background(0);
  
  for(int i=0; i<posX.length; i++) {
    strokeWeight(3);
    stroke(random(360), 100, 200, 200);
    if(i<posX.length-1) {
      line(posX[i], posY[i], posX[i+1], posY[i+1]);
      //this line was added by me not in class
      line(posX[0], posY[0], posX[i], posY[i]);
    }
  }
  println(posX.length);
}

void mousePressed() {
  posX = append(posX, mouseX);
  posY = append(posY, mouseY);
}