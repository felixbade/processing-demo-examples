// Song: Apex (ft. Artifacts) by Shaan Suleman

import moonlander.library.*;
import ddf.minim.*;

Moonlander moonlander;

void setup() {
  moonlander = Moonlander.initWithSoundtrack(this, "data/04 Apex (ft. Artifacts).mp3", 100, 8);
  fullScreen();
  moonlander.start();
}

void draw() {
  moonlander.update();

  translate(width/2, height/2);
  scale(height/1000.0);
  
  background(0);
  
  float rotation = (float) moonlander.getValue("rotation");
  fill(255);
  noStroke();
  rectMode(CENTER);
  for (int i = 0; i <= 10; i++) {
    for (int j = 0; j <= 10; j++) {
      float x = map(i, 0, 10, -500, 500);
      float y = map(j, 0, 10, -500, 500);
      rect(x, y, 15, 100*rotation);
    }
  }
}
