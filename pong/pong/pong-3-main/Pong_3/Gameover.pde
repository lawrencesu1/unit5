void gameover() {
  background(Indigo);

  textAlign(CENTER, CENTER);

  fill(darkblue);
  textSize(80);
  if (leftscore > rightscore) {
    text("LEFT WINS!", width/2, height/2 - 60);
  } else if (rightscore > leftscore) {
    text("RIGHT WINS!", width/2, height/2 - 60);
  }

  fill( maroon);
  textSize(40);
  text(leftscore + " - " + rightscore, width/2, height/2 + 20);

  textSize(30);
  text("Click to play again", width/2, height/2 + 100);
}

void gameoverClicks() {
   mode = INTRO;
}
