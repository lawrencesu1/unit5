void drawShape(float sx, float sy, float sd) {
  if (shape == CIRCLE) {
    circle(sx, sy, sd);
  } else if (shape == SQUARE) {
    rectMode(CENTER);
    rect(sx, sy, sd, sd);
    rectMode(CORNER);
  } else if (shape == TRIANGLE) {
    triangle(
      sx, sy - sd/2,
      sx - sd/2, sy + sd/2,
      sx + sd/2, sy + sd/2
    );
  }
}
