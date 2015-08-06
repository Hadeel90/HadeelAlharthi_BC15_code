PImage logo;
PFont font;


void setup() {
  size(500, 500);
  background(255);
  logo = loadImage("ExclamationPointLogo-01.png");
  font = loadFont("Copperplate-Light-20.vlw");
  imageMode(CENTER);
}


void draw() {
  image(logo, mouseX, mouseY, 50, 50);
  
  fill(0);
  textFont(font, 50);
  text("I'm watching you!", 40, height/2);
}