ParameterBox pbox;

void setup() {
  //size(800, 500);
  fullScreen(P3D);
  pixelDensity(displayDensity());
  pbox = new ParameterBox(this);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  scale(height/1000.0);
  
  pbox.update();
  
  pbox.setScale(pbox.P1, 10, 1000, pbox.LOG);
  pbox.setScale(pbox.P2, 1, 300, pbox.LOG);
  pbox.setScale(pbox.P3, 1, 300, pbox.LOG);
  pbox.setScale(pbox.P9, 0, 1*TAU, pbox.LIN);
  pbox.setScale(pbox.P10, 0, 1*TAU, pbox.LIN);
  pbox.setScale(pbox.P11, 0, 1*TAU, pbox.LIN);
  pbox.setScale(pbox.P5, 0.1, 30, pbox.LOG);
  
  strokeWeight(pbox.p5);
  
  //noStroke();
  //lights();
  //fill(0);
  rotateX(pbox.p9);
  rotateY(-pbox.p10);
  rotateZ(pbox.p11);
  sphereDetail(int(pbox.p2), int(pbox.p3));
  sphere(pbox.p1);
}
