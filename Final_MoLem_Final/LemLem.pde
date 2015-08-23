class LemLem { //<>//

  PImage Lem;

  float lemSize;
  float x2, y2;
  float shotTimer2, shotRate2;

  boolean alive2;

  PVector speed2;

  LemLem() {
    speed2 = new PVector(0, 0);
    Lem = loadImage("LemSide.png");

    x2 = 0;
    y2 = height/2;

    lemSize = 60;
    lemScore = 0;
    alive2 = true;

    shotTimer2 = 0;
    shotRate2 = 15;
  }

  void display() {
    if (alive2) {
      image(Lem, x2, y2, lemSize, 120);
    }
  }

  void update() {
    if (alive2) {
      if (y2 > height-120) {
        y2 = height-120;
      }
      if (y2 < 40) {
        y2 = 40;
      }

      y2 += speed2.y;

      if (lemUp) {
        speed2.y -= 0.3;
      } else if (lemDown) {
        speed2.y += 0.3;
      } else {
        speed2.y *=-0.1;
      }

      if (lemShoot) {
        if (shotTimer2 == 0) {
          if (alive2) {
            elementSound.play();
            elementSound.rewind();
            shot2.add(new Element(x2, y2, 10));
          }
          shotTimer2 = shotRate2;
        }
      }
      //so that the sound plays everytime spacebar is played
      if (shotTimer2 > 0) {
        shotTimer2 --;
      } else {
        shotTimer2 = 0;
      }
    }
  }
}