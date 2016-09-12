void setup() {
  size(600, 400);
}

void draw() {
  final int MAIN_SQUARE_SIZE = 100;
  final int SECONDARY_SQUARE_SIZE = (int)(MAIN_SQUARE_SIZE * 1.8);
  PVector center = new PVector(width / 2, height / 2);

  background(50);
  strokeWeight(4);

  stroke(255);
  if (mousePressed) {
    fill(255, 255);
  } else {
    fill(255, 0);
  }
  rectMode(CENTER);

  pushMatrix();
  translate(center.x, center.y);
  float mouseAngle = atan((mouseY - center.y) / (mouseX - center.x));

  pushMatrix();
  rotate(mouseAngle);
  rect(0, 0, MAIN_SQUARE_SIZE, MAIN_SQUARE_SIZE);
  popMatrix();

  stroke(80);
  fill(255, 0);
  pushMatrix();
  rotate(mouseAngle * -2);
  rect(0, 0, SECONDARY_SQUARE_SIZE, SECONDARY_SQUARE_SIZE);
  popMatrix();

  popMatrix();
}
