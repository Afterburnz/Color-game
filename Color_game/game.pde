int score = 0;
int highScore = 0;
int randomColor = int(random(0, 8));
int randomText = int(random(0, 8));
void game() {
  background(black);
  fill(white);
  rect(400,0,400,800);
  
  int w = 0;
  int b = 0;
  int y1 = 0;
  int y2 = 100;
  
  while(w < 8){
    fill(white);
    rect(0,y1,400,50);
    y1=y1+100;
    w++;
    
  }
  while(b < 8){
    fill(black);
    rect(400,y2,400,50);
    y2=y2+100;
    b++;
    
  }

  rect(0,250,800,300);
  if (dist(200, 600, mouseX, mouseY) < 75) {
    stroke(white);
    strokeWeight(5);
    fill(yellow);
  } else {
    stroke(white);
    strokeWeight(5);
    fill(red);
  }
  circle(200, 600, 150);
  fill(red);

  if (dist(600, 600, mouseX, mouseY) < 75) {
    stroke(white);
    strokeWeight(5);
    fill(yellow);
  } else {
    stroke(white);
    strokeWeight(5);
    fill(green);
  }
  circle(600, 600, 150);
  fill(green);

  fill(blue);
  textSize(50);
  text("Different", 200, 475);
  text("Same", 600, 475);

  textSize(30);
  text("Your score is " + score, 150, 60);

  fill(colors[randomColor]);
  textSize(75);
  textAlign(CENTER);
  text(texts[randomText], 400, 350);

  if (score>highScore) {
    highScore = score;
  }

  fill(white);
  stroke(gray);
  circle(650, 100, 150);

  timer();
}


void timer() {
  fill(heliotrope);

  noStroke();
  circle(650, 100, d);
  d=d+1.5;

  if(d>150){
    fail.play();
    mode = 2;
  }
}
