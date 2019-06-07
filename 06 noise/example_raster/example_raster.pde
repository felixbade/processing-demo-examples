void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  translate(width/2, height/2);
  scale(height/1000.0);
  
  noStroke();
  background(0, 0, 100);
  fill(0, 0, 0);
  
  for (int y = -10; y < 10; y++) {
    for (int x = -10; x < 10; x++) {
      ellipse(x*100, y*100, 105, 105);
    }
  }
}
