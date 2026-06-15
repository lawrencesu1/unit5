void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  }
  draggingSlider = false;
}

void mousePressed() {
  if (mode == OPTIONS) {
    if (mouseX > 140 && mouseX < 660 && mouseY > 609 && mouseY < 639) {
      draggingSlider = true;
    }
  }
}
