void intro() {
  background(255);
  
  
  fill(255);
  rect(300,500,200,100);
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400,250);
  text("START", 400,550 );
  
   
  
}


void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500&& mouseY < 600) mode = GAME;

}
