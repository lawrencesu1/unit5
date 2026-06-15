void pause () {
  background(lavendar);

  textAlign(CENTER, CENTER);

  fill(darkblue);
  textSize(80);
  text("PAUSED", width/2, height/2 - 40);

  fill( maroon);
  textSize(30);
  text("Click anywhere to proceed", width/2, height/2 + 50);
}

void pauseClicks () {
  mode = GAME;
}
