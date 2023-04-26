// hello

// George Zhang C22793985
// Alex
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

int spacing = 10;            // space between lines in pixels
int border = spacing*2;      // top, left, right, bottom border
int amplification = 3;       // frequency amplification factor
int y = spacing;
float ySteps;                // number of lines in y direction

void setup() {
  size(800, 800);
  background(255);
  strokeWeight(1);
  stroke(0);
  noFill();
  minim = new Minim(this);
  song = minim.loadFile("song.mp3");
  song.play();
}
