void intro(){
  background(white);
    
  image(gif[f],0,0,width,height);
  f=f+1;
  if(frameCount % 2 == 0) f = f+1;
  if(f == numberOfFrames) f = 0;
  fill(white);
  textSize(60);
  text("Press me to start", 130,280);
  
  if (dist(400, 400, mouseX, mouseY) < 75) {
    stroke(black);
    strokeWeight(5);
    fill(84, 192, 255);
  } else {
    stroke(black);
    strokeWeight(5);
    fill(white);
  }
  circle(400, 400, 150);
  fill(black);


}
