void endscreen() {
  background(white);
  fill(black);
  textAlign(CENTER);
  textSize(60);
  text("Get better or quit", 400, 100);
  textSize(50);
  fill(red);
  text("Click to restart",400,300);
  fill(blue);
  text("Your score this round is " + score,400,500);
  fill(green);
  text("Your highscore is " + highScore,400,700);
}
