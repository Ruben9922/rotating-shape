int lastRotationAngle = 0;

void setup() {
  size(600, 400);
}

void draw() {
  final int squareSize = 100;

  background(50);
  strokeWeight(4);

  stroke(255);
  fill(255);
  textSize(20);
  text(mouseX + ", " + mouseY + ", " + (mouseX + mouseY), 0, 20);
  text((double)mouseX / width + ", " + (double)mouseY / height, 0, 40);

  if (mousePressed) {
    fill(255, 255);
  } else {
    fill(255, 0);
  }
  pushMatrix();
  translate(width / 2, height / 2);
  int currentRotationAngle = mouseX + mouseY;
  // If mouse is below line between top left and bottom right corners, change sign of currentRotationAngle
  if (((double)mouseX / width) < ((double)mouseY / height)) {
      currentRotationAngle = -currentRotationAngle;
  }
  int resultantRotationAngle = 0;
  // If currentRotationAngle and lastRotationAngle have different signs then add lastRotationAngle and currentRotationAngle
  if ((currentRotationAngle > 0) != (lastRotationAngle > 0)) {
    resultantRotationAngle = lastRotationAngle + currentRotationAngle;
  } else {
    resultantRotationAngle = currentRotationAngle;
  }
  resultantRotationAngle = resultantRotationAngle % 360;
  rotate(radians(resultantRotationAngle));
  rectMode(CENTER);
  rect(0, 0, squareSize, squareSize);
  popMatrix();

  // Output calculated angles
  fill(255);
  text(lastRotationAngle + ", " + currentRotationAngle + ", " + resultantRotationAngle, 0, 60);

  lastRotationAngle = resultantRotationAngle;
}
