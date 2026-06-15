void game() {
  background(0, 255, 0);

  fill(0);
  textSize(40);
  text("SCORE:" + score, width/2, 50);
  text("LIVES:" + lives, width/2, 100);

  // pause button (top right)
  fill(255);
  rect(670, 20, 110, 55);
  fill(0);
  textSize(25);
  text("PAUSE", 725, 47);

  fill(255);
  stroke(0);
  strokeWeight(5);
  drawShape(x, y, d);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width - d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height - d/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  // pause button
  if (mouseX > 670 && mouseX < 780 && mouseY > 20 && mouseY < 75) {
    mode = PAUSE;
    return;
  }

  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
  } else {
    lives = lives - 1;
  }
  if (lives == 0) {
    mode = GAMEOVER;
  }
}
