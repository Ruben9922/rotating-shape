int lastRotationAngle = 0;
int rotationAngleOffset = 0;
boolean mouseWasBelowDiagonal = false;

void setup() {
  size(600, 400);
}

void draw() {
  final int squareSize = 100;

  background(50);
  strokeWeight(4);

  stroke(255);

  if (mousePressed) {
    fill(255, 255);
  } else {
    fill(255, 0);
  }
  pushMatrix();
  translate(width / 2, height / 2);
  int currentRotationAngle = (mouseX + mouseY) % 360;
  boolean mouseIsBelowDiagonal = ((double)mouseX / width) < ((double)mouseY / height);
  if (mouseIsBelowDiagonal) {
      // If mouse is below line between top left and bottom right corners ("diagonal"), change sign of currentRotationAngle
      currentRotationAngle = -currentRotationAngle;
  }
  int resultantRotationAngle;
  if (mouseWasBelowDiagonal != mouseIsBelowDiagonal) {
    rotationAngleOffset = lastRotationAngle - currentRotationAngle;
  }
  resultantRotationAngle = (rotationAngleOffset + currentRotationAngle) % 360;
  rotate(radians(resultantRotationAngle));
  rectMode(CENTER);
  rect(0, 0, squareSize, squareSize);
  popMatrix();

  lastRotationAngle = resultantRotationAngle;
  mouseWasBelowDiagonal = mouseIsBelowDiagonal;
}
