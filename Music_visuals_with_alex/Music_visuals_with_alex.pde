import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

void setup() {
  size(800, 800);
  colorMode(RGB);
  minim = new Minim(this);
  song = minim.loadFile("song.mp3");
  song.play();
}
void draw() {

 
  }
