void gameover(){
  textAlign(CENTER,CENTER);
  if(win == 1){
    background(0,255,0);
    fill(0);
    textSize(150);
    text("YOU WIN", 400, 200);
  }
  if(win == 2){
    background(255,0,0);
    fill(0);
    textSize(150);
    text("YOU LOSE", 400, 200);
  }
  
  fill(0);
  textSize(50);
  text("SCORE: " + score, 400, 350);
  
  fill(white);
  rect(300, 430, 200, 100);
  fill(0);
  textSize(40);
  text("PLAY AGAIN", 400, 480);
}

void gameoverclicks(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 430 && mouseY < 530) {
    mode = INTRO;
  }
}
