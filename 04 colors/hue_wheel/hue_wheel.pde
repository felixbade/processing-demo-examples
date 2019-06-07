PFont mainFont;

void setup() {
  size(800, 500);
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  mainFont = createFont("Montserrat-Regular.ttf", 50);
}

void draw() {
  translate(width/2, height/2);
  scale(height/1000.0);
  
  background(0, 0, 100);
  
  strokeWeight(5);
  for (float angle = 0; angle < TAU; angle += TAU/1000) {
    float rx = sin(angle);
    float ry = -cos(angle);
    stroke(angle / TAU * 360, 75, 95);
    line(rx*200, ry*200, rx*320, ry*320);
  }
  
  fill(0, 0, 10);
  textFont(mainFont);
  for (int degrees = 0; degrees < 360; degrees += 30) {
    float radians = degrees / 360.0 * TAU;
    float rx = sin(radians);
    float ry = -cos(radians);
    text(str(degrees), rx*410, ry*395, 300, 300);
  }
}
