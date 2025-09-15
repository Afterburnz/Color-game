void intro(){
  background(white);
    
  image(gif[f],0,0,width,height);
  f=f+1;
  if(frameCount % 2 == 0) f = f+1;
  if(f == numberOfFrames) f = 0;
}
