// Song: Andruss, Dokho - Breakin' House (Phil Janks Remix) by Phil Janks

import moonlander.library.*;
import ddf.minim.*;

Moonlander moonlander;

int bpm = 127;

void setup() {
  moonlander = Moonlander.initWithSoundtrack(this, "data/Andruss, Dokho - Breakin' House (Phil Janks Remix).mp3", bpm, 4);
  fullScreen();
  colorMode(HSB, 360, 100, 100);
  noiseSeed(0);
  moonlander.start();
}

void draw() {
  moonlander.update();
  float beat = (float) moonlander.getCurrentTime() * bpm/60 - 0.25;

  translate(width/2, height/2);
  scale(height/1000.0);
  
  background(0, 0, 100);
  fill(0, 0, 0);
  noStroke();
  
  float noiseSize = pow(2, (float) moonlander.getValue("noise size"));
  float noiseWeight = (float) moonlander.getValue("noise weight");
  float noiseBias = (float) moonlander.getValue("noise bias");
  float noiseSpeed = (float) moonlander.getValue("noise speed");
  float rotation = (float) moonlander.getValue("rotation");
  float zoom = (float) moonlander.getValue("zoom");

  scale(pow(2, zoom));
  rotate(rotation*TAU/4);
  
  for (int y = -30; y < 30; y++) {
    for (int x = -30; x < 30; x++) {
      float diameter = 100 * ((noise(x/noiseSize+100, y/noiseSize+100, beat*noiseSpeed) - 0.5)*noiseWeight + 0.5 + noiseBias);
      ellipse(x*50, y*50, diameter, diameter);
    }
  }
}
