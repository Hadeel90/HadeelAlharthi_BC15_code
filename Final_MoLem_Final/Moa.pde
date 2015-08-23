class Moa {

  PImage Mo;

  float moSize;
  float x, y;
  float shotTimer, shotRate;

  boolean alive;

  PVector speed;

  Moa() {

    speed = new PVector(0, 0);
    Mo = loadImage("MoSide.png");

    x = width;
    y = height/2;

    moSize = 40;
    moScore = 0;
    alive = true;

    shotTimer = 0;
    shotRate = 15;
  }

  void display() {
    if (alive) {
      image(Mo, x - moSize, y, moSize, 120);
    }
  }


  void update() {

    if (alive) {
      if (y > height-120) {
        y = height-120;
      }
      if (y < 40) {
        y = 40;
      }
      y += speed.y;

      if (moUp) {
        speed.y -= 0.3;
      } else if (moDown) {
        speed.y += 0.3;
      } else {
        speed.y *=-0.1;
      }

      if (moShoot) {
        if (shotTimer == 0) {
          if (alive) {
            mathSound.play();
            mathSound.rewind();
            shot1.add(new Math(x, y, 10));
          }
          shotTimer = shotRate;
        }
      }

      //so that the sound plays everytime spacebar is played
      if (shotTimer > 0) {
        shotTimer --;
      } else {
        shotTimer = 0;
      }
    }
  }
}