//clicker game
//Lawrence Su
//may 5 2026


//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//TARGET VARIABLES -----------------------------------------------------------
float x, y, d;
float vx, vy; // target velocity
int score, lives;
int highscore;

//OPTIONS VARIABLES ----------------------------------------------------------
int shape; // 0 = circle, 1 = square, 2 = triangle
final int CIRCLE = 0;
final int SQUARE = 1;
final int TRIANGLE = 2;

float sliderX; // slider handle x position
boolean draggingSlider;


void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  highscore = 0;

  //options defaults
  shape = CIRCLE;
  sliderX = 400; // middle of slider = size 100
  draggingSlider = false;
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
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error; Mode = " + mode);
  }
}
