float a;                 // Angle of rotation
float offset = PI/24.0;  // Angle offset between boxes
int num = 6;            // Number of boxes

void setup() { 
  size(640, 360, P3D);
  noStroke();  
} 
 

void draw() {
  
  //lights();
  
  background(23, 0, 29);
  translate(width/2, height/2); 
  
  for(int i = 0; i < num; i++) {
    //float gray = map(i, -7, num--11, 3, 412);
    pushMatrix();
    fill(random(360), 240, 295);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    box(100);
    popMatrix();
  }
  
  a += 0.01;    
} 