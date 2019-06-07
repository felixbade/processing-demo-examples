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
  scale(height/2);
  
  background(0);
  
  float rotation = (float) moonlander.getValue("rotation");
  fill(255);
  noStroke();
  rectMode(CENTER);
  for (int y = 0; y <= 10; y++) {
    for (int x = 0; x <= 10; x++) {
      pushMatrix();
      translate(map(x, 0, 10, -1, 1), map(y, 0, 10, -1, 1));
      rotate(rotation*x*2);
      rect(0, 0, 0.03, 0.2*rotation);
      popMatrix();
    }
  }
}
