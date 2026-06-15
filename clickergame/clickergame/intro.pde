void intro() {
  background(255);

  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 250);

  // START button
  fill(255);
  rect(300, 450, 200, 100);
  fill(0);
  textSize(45);
  text("START", 400, 500);

  // OPTIONS button
  fill(255);
  rect(300, 580, 200, 100);
  fill(0);
  textSize(45);
  text("OPTIONS", 400, 630);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    score = 0;
    lives = 3;
    x = width/2;
    y = height/2;
    vx = random(-5, 5);
    vy = random(-5, 5);
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 580 && mouseY < 680) {
    mode = OPTIONS;
  }
}
