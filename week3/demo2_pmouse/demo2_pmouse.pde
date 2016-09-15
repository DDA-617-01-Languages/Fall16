/*
///////////////////////////////////////////
PMOUSE 
 From demo exploring: 
 pmouseX(), pmouseY()
 ///////////////////////////////////////////
 */

void setup() {
  size (800, 800);
  background (255, 100, 100); //move this line to draw and see what happens
}


void draw() {
  stroke(100, 100, 255);
  strokeWeight(5);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
