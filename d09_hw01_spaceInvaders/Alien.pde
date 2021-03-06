class Alien {
  //Variables
  float x, y;
  float speed;
  float alienSize = 48;
  PImage alienIcon = loadImage("alien.png");
  
  Alien(float _x, float _y, float _speed) {
    x = _x;
    y = _y;
    speed = _speed;
  }

  void display() {
    image(alienIcon, x, y, alienSize, alienSize);
  }
  
  void update() {
    y += speed;
  }
  
  void checkCollisionWithBullet(Bullet b, Alien a, int alienIndex, int shotIndex) {
    if(dist(x, y, b.x, b.y) < alienSize/2+2) {
      shots.remove(shotIndex);
      aliens.remove(alienIndex);
      score++;
    }
  }
  
  void checkCollisionWithPlayer(Player ship, Alien alien) {
    
  }


}