//Pong
//Lawrence Su
// may 12 2026

//colors
color beige = #E2D4B7;
color olive = #9C9583;
color grey = #A1A499;
color silver = #B0BBBF;
color greenGrey = #CADBC8;


//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;



void setup() {
  size(800,600);
  mode = GAME;
  
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //initialize keyboard vars
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
  }else{
    println("Mode error:" + mode);
  }
}
