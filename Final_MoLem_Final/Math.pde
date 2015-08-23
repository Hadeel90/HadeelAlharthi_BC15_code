class Math {
  float x, y;
  float speed;
  float mathSize;
  int lifespan, runtime;
  PImage math;

  Math(float _x, float _y, float _speed) {
    x = _x;
    y = _y + 50;
    speed = _speed;
    math = loadImage("math.png");
    mathSize = 60;
    lifespan = 100;
    runtime = 0;
  }

  void display() {
    image(math, x, y, mathSize, 15);
  }

  void update() {
    x -=speed;
  }

  void dissipate(int index) {
    runtime ++;
    if (runtime > lifespan) {
      //remove bullets from the ArrayList
      shot1.remove(index);
    }
  }

  void LemVsMath(LemLem l, int elemIndex) {
    float distance = dist(x, y, l.x2, l.y2);
    if (distance < 80) {
      shot1.remove(elemIndex);
      moScore++;
    }
  }
}