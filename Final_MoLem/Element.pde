class Element {
  float x2, y2;
  float speed2;
  float elementSize;
  int lifespan2, runtime2;
  PImage element;
  
  
  Element(float _x2, float _y2, float _speed2) {
    x2 = _x2;
    y2 = _y2 + 50;
    speed2 = _speed2;
    element = loadImage("html.png");
    elementSize = 60;
    lifespan2 = 100;
    runtime2 = 0;
  }
  
  void display() {
    image(element,x2,y2,elementSize, 15); 
  }
  
  void update() {
    x2 +=speed2;
  }
  
  void dissipate(int index) {
    runtime2 ++;
    if (runtime2 > lifespan2) {
      //remove bullets from the ArrayList
      shot2.remove(index);
    }  
  }
  
   void MoaVsElement(Moa m, int elemIndex) {
    float distance = dist(x2, y2, m.x, m.y);
    //println("e.x2" + e.x2);
    if (distance < m.moSize/2 + 2) {
      println("hit");
      shot2.remove(elemIndex);
      lemScore++;
      
    }
  }
}