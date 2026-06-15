void intro () {
  background(bubblePink);
  
  textAlign(CENTER, CENTER);
  
  fill(darkblue);
  textSize(80);
  text("PONG", width/2, 150);
  textSize(40);
  text("Press P to pause anytime", width/2, 230);
  text("Best of Luck", width/2, 270);
  
  
  //button
  noStroke();
  fill(turquoise);
  rect(100, 450, 250, 100);   //1 player (vs AI)
  fill( turquoise);
  rect(450, 450, 250, 100);   //2 player
  
  //button
  fill(255);
  textSize(40);
  text("1 PLAYER", 225, 500);
  text("2 PLAYER", 575, 500);
}

void introClicks () {
   //1 player
   if (clickedOnRect(100, 450, 250, 100)) {
     resetGame();
     AI = true;
     mode = GAME;
   }
   //2 player
   if (clickedOnRect(450, 450, 250, 100)) {
     resetGame();
     AI = false;
     mode = GAME;
   }
}
