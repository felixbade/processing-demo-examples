ParameterBox p;

void setup() {
  fullScreen(P3D);
  pixelDensity(displayDensity());
  p = new ParameterBox(this);
  noiseSeed(0);
  noCursor();
}

void draw() {
  background(255);
  translate(width/2, height/2);
  scale(height/1000.0);
  //lights();
  
  p.update();
  
  p.setScale(p.P1, -TAU, TAU, p.LIN);
  p.setScale(p.P2, -TAU, TAU, p.LIN);
  p.setScale(p.P3, -TAU, TAU, p.LIN);
  rotateX(p.p1);
  rotateY(p.p2);
  rotateZ(p.p3);

  p.setScale(p.P4, 1, 100, p.LOG);
  scale(p.p4);
  strokeWeight(0.1);

  p.setScale(p.P5, 1, 30000, p.LOG);
  p.setScale(p.P6, 1, 200, p.LOG);
  p.setScale(p.P7, 0.01, 3, p.LOG); // scale
  p.setScale(p.P8, 0.1, 300, p.LOG); // magnitude
  
  p.setScale(p.P10, 0.1, 0.9, p.LIN);
  noiseDetail(9, p.p10);


  p.setScale(p.P9, 3, 150, p.LOG);
  int n = int(p.p9)  ;
  
  for (int i = -n; i < n; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = -n; j < n; j++) {
      vertex2(i, j, z(i, j));
      vertex2(i, j+1, z(i, j+1));
      vertex2(i+1, j, z(i+1, j));
      vertex2(i+1, j+1, z(i+1, j+1));
    }
    endShape();
  }
}

float z(float x, float y) {
  return p.p6 * p.p5 / (p.p5 + x*x + y*y) - p.p6/2;
}

void vertex2(float x, float y, float z) {
  float s = p.p7; // scale
  float m = p.p8 * (z + p.p6/2); // magnitude
  float x2 = x + m * (noise(x*s + 1000, y*s + 1000, z*s + 1000) - 0.5);
  float y2 = y + m * (noise(x*s + 2000, y*s + 2000, z*s + 2000) - 0.5);
  float z2 = z + m * (noise(x*s + 3000, y*s + 3000, z*s + 3000) - 0.5);
  vertex(x2, y2, z2);
}
