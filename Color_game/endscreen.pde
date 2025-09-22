void endscreen() {
  background(white);
  fill(black);

  int c = 0;
  int x = 0;
  int y = 0;

  int c2 = 0;
  int x2=0;
  int y2=800;

  int c3 = 0;
  int x3=800;
  int y3=0;
  
  int c4 = 0;
  int x4=0;
  int y4=0;

  while (c < 30) {
    stroke(black);
    strokeWeight(20);

    line(x, 0, 0, y);
    x = x + 100;
    y = y + 100;
    c++;
  }




  while (c2 < 30) {
    stroke(black);
    strokeWeight(20);

    line(x2, 800, 800, y2);
    x2 = x2 + 100;
    y2 = y2 - 100;
    c2++;
  }

  while (c3 < 30) {
    stroke(black);
    strokeWeight(20);

    line(x3, 0, 0, y3);
    x3 = x3 - 100;
    y3 = y3 + 100;
    c3++;
  }
  
  while (c4 < 30) {
    stroke(black);
    strokeWeight(20);

    line(x4, 0, 800, y4);
    x4 = x4 - 100;
    y4 = y4 + 100;
    c4++;
  }  
  textAlign(CENTER);
  textSize(60);
  fill(heliotrope);
  text("Get better or quit", 400, 100);
  textSize(50);
  fill(red);
  text("Click to restart", 400, 300);
  fill(blue);
  text("Your score this round is " + score, 400, 500);
  fill(green);
  text("Your highscore is " + highScore, 400, 700);
}
