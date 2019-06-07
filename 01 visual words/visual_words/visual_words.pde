PFont titleFont;

void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);

  titleFont = createFont("Raleway-Black.ttf", 100);
}

void draw() {
  translate(width/2, height/2);
  scale(height/1000.0);

  background(0, 0, 10);

  textFont(titleFont, 150);
  String[] words = {"Colors", "Typography", "Variation", "Harmony", "Contrast", "Rhythm"};
  for (int i = 0; i < words.length; i++) {
    fill((400 - 27*i) % 360, 75, 95);
    text(words[i], 0, 155*i, 900, 960);
  }
}
