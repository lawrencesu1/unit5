void game() {
  
  background(0);
  
  //center line
  strokeWeight(5);
  stroke (255);
  line(width/2, 0 , width/2, height);
  
  //scoreboard
  textSize(50);
  fill(grey);
  text(leftscore, width/4, 100);
  fill(olive);
  text(rightscore, 3*width/4, 100);
  
  //draw paddles
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty +5;
  
  //ball
  circle(ballx,bally,balld);
  
  //move ball
  ballx = ballx + vx;
  bally = bally + vy;
  
  
  //scoring
  if(ballx < 0) {
   rightscore++;
   
  }
  
  
  //bouncing
  if(bally <= balld/2 || bally >= height-balld/2) {
    vy = vy * -1;
  }
  if(dist(ballx,bally, rightx, righty) < balld/2 + right


void gameClicks() {
  
}
