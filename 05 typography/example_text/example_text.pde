void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);
}

void draw() {
  translate(width/2, height/2);
  scale(height/1000.0);

  background(200, 70, 90);

  fill(0, 0, 100);
  textSize(200);
  text("Made at Graffathon 2018", 0, 0, 1500, 960);
}
