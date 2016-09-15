/*
///////////////////////////////////////////
 IF STATEMENTS:
 From demo exploring: 
 if statements
 + reviewing event functions + random function
 
 CONDITIONAL STRUCTURE:
 
 if(boolean test){
 statements execute if true
 }   
 
 else if (boolean test 2){
 statements exectue if true
 }
 
 else if (boolean test 3){
 statements execute if true
 }
 
 else{
 statements execute if all tests are false
 }
 
 ///////////////////////////////////////////
 */

//declare variables for background 
float r= 255;
float g= 255;
float b= 255;


void setup() {
  size (700, 700);
}

void draw() {
  background (r, g, b);

  //if mouse is on right side of screen draw red ellipse
  if (mouseX> width/2) { //if test is true run code block
    fill(255, 0, 0);
    ellipse (width/2, height/2, 100, 100);
  }

  //if previous test is false, move to this next test
  else if (mouseY> height/2) { 
    rectMode(CENTER);
    fill(0);
    rect(width/2, height/2, 100, 100);
  }

  //if all previous tests are false execute this code block
  else {
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 100, 100);
  }
}

//mouse event changes variables for background
void mouseClicked() {
  r= random (0, 255);  //returns random float 0-255
  g= random (0, 255);
  b= random (0, 255);
}


