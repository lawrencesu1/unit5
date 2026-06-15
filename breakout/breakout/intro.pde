void intro(){
  image(gif[f],0,0,width,height);
  println(frameCount);
  if(frameCount % 2 == 0) f = f+1;
  if (f == NOF) f = 0;
  
  fill(navy);
  rect(300,350, 200,100);
  textAlign(CENTER,CENTER);
  textSize(50);
  fill(255,0,0);
  text("START", 400, 400);
  
  textSize(120);
  text("BREAKOUT", 400, 200);
}

void introclicks(){
  if(mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450){
    score = 0;
    lives = 3;
    win = 0;
    ballX = width/2;
    ballY = height/2;
    vx = random(-8, 8);
    vy = -6;
    int i = 0;
    while (i < n) {
      alive[i] = true;
      i = i + 1;
    }
    mode = GAME;
  }
}
