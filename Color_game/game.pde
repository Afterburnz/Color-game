int score = 0;
int randomColor = int(random(0, 8));
int randomText = int(random(0, 8));
void game() {
  background(black);


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
  textSize(50);
  textAlign(CENTER);
  text(texts[randomText], 400, 250);


}
