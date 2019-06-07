// Song: Pierce The Break Beat With Your Drill by MrDevilman

import moonlander.library.*;
import ddf.minim.*;

Moonlander moonlander;

int bpm = 140;

void setup() {
  moonlander = Moonlander.initWithSoundtrack(this, "data/PierceTheBreakBeatWithYourDrill.wav", bpm, 4);
  fullScreen(P3D);
  //size(800, 500, P3D);
  colorMode(HSB, 360, 100, 100);
  moonlander.start();
}

void draw() {
  moonlander.update();
  float beat = (float) moonlander.getCurrentTime() * bpm/60;

  translate(width/2, height/2);
  scale(height/10.0);

  background(0, 0, 0);

  translate(0, 0, -1.56 + 0.5*beat);
  for (int i = 0; i < 44; i++) {
    translate(0, 0, -0.5);
    stroke(140, 70, 100);
    strokeWeight(0.03);
    noFill();
    //box(2, 2, 2);
    box(2 + 2*noise(i*0.3), 2, 2);
    //box(2 + noise(i*0.3), 2, 2);
  }

}
