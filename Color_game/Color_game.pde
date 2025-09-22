color white= #ffffff;
color black= #000000;
color gray=#808080;
color red = #fa3243;
color green = #78ff59;
color yellow = #ffed69;
color blue = #57f4ff;
color heliotrope =#df73ff;
boolean matching = true;
import processing.sound.*;
SoundFile fail;
SoundFile success;
SoundFile music;
PImage[] gif;
int f;
int numberOfFrames = 90;
int mode =0;
float d = 0;
final int intro =0;
final int game = 1;
final int endscreen = 2;
color[] colors={#f72a1b, #333dff, #57ff47, #ffe347, #ff8f17, #ff30f8, #a530ff, #ffffff, #000000};
String[] texts={"RED", "BLUE", "GREEN", "YELLOW", "ORANGE", "PINK", "PURPLE", "WHITE", "BLACK"};

void setup() {
  size(800, 800);
  fail = new SoundFile(this, "FAILURE.wav");
  success = new SoundFile(this, "SUCCESS.wav");
  music=new SoundFile(this, "MUSIC.mp3");
  music.loop();
  music.amp(1);
  PFont mono;
  mono = createFont("andalemo.ttf", 128);
  textFont(mono);
  beginning();

  gif = new PImage[numberOfFrames];

  int i = 0;
  while (i < numberOfFrames) {
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

void mouseReleased() {
  if (dist(400, 400, mouseX, mouseY)<75 && mode == 0) {
    mode = mode+1;

    score = 0;
    d = 0;
  }
  if (mode ==2) {
    mode = 0;
  }



  if (matching == true && dist(600, 600, mouseX, mouseY)<75 && mode == 1)
  {
    score++;
    success.play();
    beginning();
  } else if (matching == false && dist(200, 600, mouseX, mouseY)<75 && mode == 1)
  {
    score++;
    success.play();
    beginning();
  } else if (matching == true && dist(200, 600, mouseX, mouseY)<75 && mode == 1)
  {
    fail.play();
    
    mode=2;
  } else if (matching == false && dist(600, 600, mouseX, mouseY)<75 && mode == 1)
  {
    fail.play();
    mode=2;
  }
}

void beginning() {
  d = 0;
  if (random(0, 1) > 0.5) {
    matching = true;
  } else {
    matching = false;
  }
  randomText = int(random(0, 8));
  if (matching == true) {
    randomColor = randomText;
  }
  if (matching == false) {
    while (randomColor == randomText) {
      randomColor = int(random(0, 8));
    }
  }
}
