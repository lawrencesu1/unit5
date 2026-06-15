void pause(){
  fill(0);
  rect(0, 0, width, height);
  fill(white);
  textAlign(CENTER, CENTER);
  textSize(100);
  text("PAUSED", 400, 250);
  
  fill(navy);
  rect(300, 380, 200, 100);
  fill(white);
  textSize(40);
  text("RESUME", 400, 430);
}
 
void pauseclicks(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 380 && mouseY < 480) {
    mode = GAME;
  }
}
