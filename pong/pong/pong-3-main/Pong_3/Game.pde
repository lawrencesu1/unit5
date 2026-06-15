void game() {
  background(steelBlue);

  //centerline
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //scoreboard
  noStroke();
  textSize(50);
  fill(Indigo);
  text(leftscore, width/4, 100);
  fill(porcelain);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;

  stroke(5);
  //paddles
  fill(lavendar);
  circle(leftx, lefty, leftd);
  fill(grey);
  circle(rightx, righty, rightd);


  //ball
  fill(Indigo);
  circle(ballx, bally, balld);

  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
  if (AI == false) {
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  } else {
    //AI: only react when the ball is on the right side
    if (ballx > width/2) {
      if (bally < righty - 5) righty = righty - 4;   //ball above paddle, move up
      if (bally > righty + 5) righty = righty + 4;   //ball below paddle, move down
    }
  }

  //keep paddles on screen
  if (lefty < leftd/2) lefty = leftd/2;
  if (lefty > height - leftd/2) lefty = height - leftd/2;
  if (righty < rightd/2) righty = rightd/2;
  if (righty > height - rightd/2) righty = height - rightd/2;

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //rightscoring
  if (ballx < 0) {
    rightscore++;
    resetBall();
  }

  //lftscoring
  if (ballx > width) {
    leftscore++;
    resetBall();
  }

  //bouncing
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -1;
  }
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }

  //check for a winner
  if (leftscore >= WINSCORE || rightscore >= WINSCORE) {
    mode = GAMEOVER;
  }
}

//resets the ball
void resetBall() {
  ballx = width/2;
  bally = height/2;
  vx = random(2, 4);
  vy = random(-2, 2);
  if (random(1) < 0.5) {
    vx = -vx;
  }
  timer = 100;
}

//new game
void resetGame() {
  leftscore = 0;
  rightscore = 0;
  lefty = height/2;
  righty = height/2;
  resetBall();
}


void gameClicks() {
}
