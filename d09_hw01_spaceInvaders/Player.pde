class Player {
  //Variables
  float x, y;
  PVector speed;
  float maxSpeed;
  float shotRate, shotTimer;
  boolean alive;
  PImage playerIcon = loadImage("ship.png");
  
  //Contructor
  Player(float _x, float _y) {
    x = _x;
    y = _y;
    alive = true;
    maxSpeed = 10;
    speed = new PVector(0,0);
    shotRate = 5;
    shotTimer = 0;
  }
  
  //Functions
  void display() {
    imageMode(CENTER);
    if (alive) {
      image(playerIcon, x, y);
    }
  }
  
  void update() {
    if(alive) {
      //boundary checking
      if(x > width) {
        x = 0;
      }
      if(x < 0) {
        x = width;
      }
      if(y > height) {
        y = 0;
      }
      if(y < 0) {
        y = height;
      }
      
      //add the speed
      x += speed.x;
      y += speed.y;
      
      if (keyLeft) {
        speed.x -= 0.5;
      } else if (keyRight) {
        speed.x += 0.5;
      } else if (keyUp) {
        speed.y -= 0.5;
      } else if (keyDown) {
        speed.y += 0.5;
      } else { // to make it stop moving when we're not pressing the keyboard
        speed.x *= -0.1;
        speed.y *= -0.1;
      }
      
      //if keyShoot is true
      if (keyShoot) {
        if(shotTimer == 0) {
          shoot();
          shotTimer = shotRate;
        }
      }
      
      //to make the sound play over and over again
      if (shotTimer > 0) {
        shotTimer --;
      } else {
        shotTimer = 0;
      }
      
    }
  }
  
  void shoot() {
    if (alive) {
      soundShoot.play();
      soundShoot.rewind();
      shots.add(new Bullet(x, y, 10));
    }
  }
}

  