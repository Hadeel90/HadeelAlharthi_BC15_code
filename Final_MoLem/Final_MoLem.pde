import ddf.minim.*;
Minim minim;
AudioPlayer mathSound;
AudioPlayer elementSound;

boolean state0 = true;
boolean state1 = false;
boolean state2 = false;
boolean state3 = false;

boolean moUp = false;
boolean moDown = false;
boolean lemUp = false;
boolean lemDown = false;
boolean moShoot = false;
boolean lemShoot = false;

int lemScore;
int moScore;

Moa mo;
LemLem lem;
ArrayList<Math> shot1;
ArrayList<Element> shot2;

void setup() {
  size(800, 600);
  smooth();

  mo = new Moa();
  lem = new LemLem();
  shot1 = new ArrayList<Math>();
  shot2 = new ArrayList<Element>();

  restart();

  //minim = new Minim(this);
  //mathSound = minim.loadFile("laser.wav");
  //elementSound = minim.loadFile("laser.wav");
}

void restart() {
  moScore = 0;
  lemScore = 0;

  mo.alive = true;
  lem.alive2 = true;
}

void draw() {
  if (state0) {
    fill(0);
    rect(0, 0, 800, 600);

    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Grab a friend and play!", width/2, height/2);
    text("Press the space bar to start the game", width/2, height/2 + 50);
  }

  if (state1) {
    state0 = false;
    background(255);

    fill(0);
    textSize(20);
    textAlign(LEFT);
    text("Score: " + lemScore, 10, 30);
    textAlign(RIGHT);
    text("Score: " + moScore, width - 10, 30);

    mo.update();
    mo.display();
  
    lem.update();
    lem.display();
    
    

    for (int i=0; i<shot1.size(); i++) {
      Math m = shot1.get(i);
      m.update();
      m.display();
      m.dissipate(i);
    }

    for (int j=0; j<shot2.size(); j++) {
      Element e = shot2.get(j);
      e.update();
      e.display();
      e.dissipate(j);
      
      e.MoaVsElement(mo,j);
    }
     
  }

  if (state2) {
    fill(0);
    rect(0, 0, 800, 600);
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Mo Wins!", width/2, height/2);
  }

  if (state3) {
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Lem Wins!", width/2, height/2);
  }

  win();
}

void win() {
  if (moScore == 10) {
    state2 = true;
  } else if (lemScore == 10) {
    state3 = true;
  }
}

void keyPressed() {
  if (keyPressed) {
    if (key == ' ') {
      state1 = true;
    }
    if (key == 'o') {
      moUp = true;
    }
    if (key == 'l') {
      moDown = true;
    }
    if (key == 'w') {
      lemUp = true;
    }
    if (key == 's') {
      lemDown = true;
    }
    if (key =='j') {
      moShoot = true;
    }
    if (key =='f') {
      lemShoot = true;
    }
  }
}

void keyReleased() {
  if (key == 'o') {
    moUp = false;
  }
  if (key == 'l') {
    moDown = false;
  }
  if (key == 'w') {
    lemUp = false;
  }
  if (key == 's') {
    lemDown = false;
  }
  if (key =='j') {
    moShoot = false;
  }
  if (key =='f') {
    lemShoot = false;
  }
}