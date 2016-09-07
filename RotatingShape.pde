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
  rotate(radians(mouseX + mouseY));
  rectMode(CENTER);
  rect(0, 0, squareSize, squareSize);
  popMatrix();
}