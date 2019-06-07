// Song: Pierce The Break Beat With Your Drill by MrDevilman

import moonlander.library.*;
import ddf.minim.*;

Moonlander moonlander;
int bpm = 140;

void setup() {
  moonlander = Moonlander.initWithSoundtrack(this, "data/PierceTheBreakBeatWithYourDrill.wav", bpm, 4);
  fullScreen(P3D);
  colorMode(HSB, 360, 100, 100);
  moonlander.start();
}

void draw() {
  moonlander.update();

  translate(width/2, height/2);
  scale(height/1000.0);
  background(0, 0, 0);
  
  stroke(140, 70, 100);
  strokeWeight(3);
  noFill();
  
  box(200);
}
