color white= #ffffff;
color black= #000000;
import processing.sound.*;
SoundFile fail;
SoundFile success;
SoundFile music;
PImage[] gif;
int f;
int numberOfFrames = 90;
int mode =0;
final int intro =0;
final int game = 1;
final int endscreen = 2;
void setup() {
  size(800, 800);
  fail = new SoundFile(this, "FAILURE.wav");
  success = new SoundFile(this, "SUCCESS.wav");
  music=new SoundFile(this, "MUSIC.mp3");  
  music.loop();
  music.amp(1);
  

  
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while(i < numberOfFrames){
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i = i+1;
  }
}

void draw() {
    if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else {
    endscreen();
  }

  
  
}
