//Lawrence Su
//Pong


//color 
 color  Indigo = #340068;
 color  bubblePink = #FF6978;
 color  porcelain  = #FFFCF9;
 color turquoise =  #B1EDE8;
 color maroon = #6D435A;
 color lavendar = #E3D7FF;
 color purple = #AFA2FF;
 color darkblue =  #7A89C2;
 color grey = #72788D;
 color steelBlue = #4A7FA2;


//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//first player to this score wins
final int WINSCORE = 1;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy;
boolean AI;

int leftscore, rightscore, timer;


boolean clickedOnRect(float x, float y, float w, float h) {
  return (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h);
}

//keyboard variables 
boolean wkey, skey, upkey, downkey;


void setup() {
  size(800, 600);
  mode = INTRO;
 
  
  //intitilize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initiialize ball
  balld = 100;
  resetBall();
  
  rightscore = leftscore = 0;
  
   wkey = skey = upkey = downkey = false;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error" + mode);
  }
}
