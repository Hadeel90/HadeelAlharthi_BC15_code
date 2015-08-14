import ddf.minim.*;
Minim minim;
AudioPlayer soundShoot;


Player ship;
ArrayList<Bullet> shots;
ArrayList<Alien> aliens;

Boolean keyRight = false;
Boolean keyLeft = false;
Boolean keyUp = false;
Boolean keyDown = false;
Boolean keyShoot = false;
int score;

void setup() {
  size(800, 600);
  background(0);
  ship = new Player (width/2, height*0.85);
  shots = new ArrayList<Bullet>();
  aliens = new ArrayList<Alien>();
  
  minim = new Minim(this);
  soundShoot = minim.loadFile("laser.wav");
  restart();
  
}

void restart() {
   score = 0;
   aliens.clear();
   aliens.add(new Alien(random(width), 0, random(0.5, 2)));
   aliens.add(new Alien(random(width), 0, random(0.5, 2)));
   aliens.add(new Alien(random(width), 0, random(0.5, 2)));
   
   ship.x = width/2;
   ship.y = height*0.85;
   ship.alive = true;
}

void draw() {
  fill(0,30);
  rect(0, 0, width, height);
  
  ship.display();
  ship.update();
  
  for (int i=0; i<shots.size(); i++) {
    Bullet b = shots.get(i);
    b.update();
    b.display();
    b.dissipate(i);
  }
  
  for(int i =0; i< aliens.size(); i++) {
    Alien a = aliens.get(i);
    a.update();
    a.display();
    
    //if it reaches bottom of the screen remove it from arraylist
    if (a.y > height+ a.alienSize/2) {
      aliens.remove(i);
    }
    for (int j = 0; j< shots.size(); j++) {
      Bullet tempShot = shots.get(j);
      a.checkCollisionWithBullet(tempShot, a, i, j);
    }
  }
}

void keyPressed() {
  if(key == CODED) {
    if (keyCode == RIGHT) {
      keyRight = true;
    }
    if(keyCode == LEFT) {
      keyLeft = true;
    }
    if(keyCode == UP) {
      keyUp = true;
    }
    if(keyCode == DOWN) {
      keyDown = true;
    }
  }
  if (key == ' ') {
   keyShoot = true; 
  }
}

void keyReleased() {
  if(key == CODED) {
    if (keyCode == RIGHT) {
      keyRight = false;
    }
    if(keyCode == LEFT) {
      keyLeft = false;
    }
    if(keyCode == UP) {
      keyUp = false;
    }
    if(keyCode == DOWN) {
      keyDown = false;
    }
  }
  if (key == ' ') {
   keyShoot = false; 
  }
}