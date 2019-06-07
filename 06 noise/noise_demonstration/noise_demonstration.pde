void setup() {
  fullScreen();
}

void draw() {
  background(255);
  
  float time = millis() * 0.00003;

  noiseDetail(9, 0.45);
  noStroke();
  fill(16);
  for (float x = 0; x < width; x = x + 1) {
    float noiseValue = noise(x/500, time);
    float y = map(noiseValue, 0, 1, 0, height);
    rect(x, y, 1, height);
  }
}
