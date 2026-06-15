void options() {
  background(255);

  fill(0);
  textSize(72);
  text("OPTIONS", 400, 100);

  // --- SHAPE SECTION ---
  textSize(35);
  text("ICON SHAPE", 400, 200);

  // circle button
  if (shape == CIRCLE) {
    fill(0);
  } else {
    fill(255);
  }
  rect(100, 240, 160, 80);
  if (shape == CIRCLE) {
    fill(255);
  } else {
    fill(0);
  }
  textSize(28);
  text("CIRCLE", 180, 280);

  // square button
  if (shape == SQUARE) {
    fill(0);
  } else {
    fill(255);
  }
  rect(320, 240, 160, 80);
  if (shape == SQUARE) {
    fill(255);
  } else {
    fill(0);
  }
  textSize(28);
  text("SQUARE", 400, 280);

  // triangle button
  if (shape == TRIANGLE) {
    fill(0);
  } else {
    fill(255);
  }
  rect(540, 240, 160, 80);
  if (shape == TRIANGLE) {
    fill(255);
  } else {
    fill(0);
  }
  textSize(28);
  text("TRIANGLE", 620, 280);

  // --- PREVIEW ---
  fill(0);
  textSize(35);
  text("PREVIEW", 400, 390);

  stroke(0);
  strokeWeight(5);
  fill(255);
  drawShape(400, 470, d);
  noStroke();

  // --- SIZE SLIDER ---
  fill(0);
  noStroke();
  textSize(35);
  text("ICON SIZE", 400, 580);

  // slider track
  fill(0);
  rect(150, 620, 500, 8);

  // slider handle
  fill(0);
  circle(sliderX, 624, 30);

  // size label
  textSize(25);
  text("SIZE: " + int(d), 400, 680);

  // drag slider
  if (draggingSlider) {
    sliderX = mouseX;
    if (sliderX < 150) sliderX = 150;
    if (sliderX > 650) sliderX = 650;
    d = map(sliderX, 150, 650, 30, 180);
  }

  // --- BACK button ---
  stroke(0);
  strokeWeight(3);
  fill(255);
  rect(300, 715, 200, 70);
  noStroke();
  fill(0);
  textSize(35);
  text("BACK", 400, 750);
}

void optionsClicks() {
  // shape buttons
  if (mouseX > 100 && mouseX < 260 && mouseY > 240 && mouseY < 320) shape = CIRCLE;
  if (mouseX > 320 && mouseX < 480 && mouseY > 240 && mouseY < 320) shape = SQUARE;
  if (mouseX > 540 && mouseX < 700 && mouseY > 240 && mouseY < 320) shape = TRIANGLE;

  // back button
  if (mouseX > 300 && mouseX < 500 && mouseY > 715 && mouseY < 785) mode = INTRO;
}
