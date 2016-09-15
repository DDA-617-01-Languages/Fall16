/*
///////////////////////////////////////////
 STATIC vs DYNAMIC:
 From demo exploring: 
 setup() and draw()
 basic input: mouseX, mouseY
 ///////////////////////////////////////////
 */


// the code in setup block runs once

void setup() {
  size (800, 800);
  background (255);
}


// the code in draw block runs repeatedly 

void draw() {
  //background (255); // move this line to setup and see what happens

  //static line 
  //line (0, 0, 400, 400); 

  //dynamic line
  line (0, 0, mouseX, mouseY);

  //adds ellipse following mouse
  ellipse (mouseX, mouseY, 50, 50);
}
