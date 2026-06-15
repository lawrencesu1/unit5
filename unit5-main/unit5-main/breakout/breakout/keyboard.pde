void keyPressed(){
  if(key == 'a' || key == 'A') akey = true;
  if(key == 'd' || key == 'D') dkey = true;
  if(key == 'p' || key == 'P') {
    if (mode == GAME) mode = PAUSE;
    else if (mode == PAUSE) mode = GAME;
  }
}

void keyReleased(){
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
}
