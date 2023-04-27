import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
FFT fft;
AudioInput input;
int[][] colo=new int[300][3];

void setup() {
 // size(800, 800);
 fullScreen(P3D);
  colorMode(RGB);

  minim = new Minim(this);

  song = minim.loadFile("song.mp3");
  song.loop();

  input = minim.getLineIn();
  fft = new FFT(input.bufferSize(), input.sampleRate());
}
void draw() {

  background(0);
  stroke(255);

  fft.forward(input.mix);

//  for (int i = 0; i < fft.specSize(); i++) {
   // rect(i, 200, i, fft.getBand(i) * 10);
   for(int i = 0; i < player.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i+1, 0, player.bufferSize(), 0, width );
    line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );
    line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
  }
  
}
  
  
