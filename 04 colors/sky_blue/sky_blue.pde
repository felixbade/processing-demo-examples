void setup() {
  size(800, 500);
}

void draw() {
  translate(width/2, height/2);
  scale(height/1000.0);
  
  background(255);
  fill(0, 0, 255);
  noStroke();
  ellipse(-750, 0, 1300, 1300);
  ellipse(750, 0, 1300, 1300);
}
