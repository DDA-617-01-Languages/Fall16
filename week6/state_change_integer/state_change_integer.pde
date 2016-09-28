//working with state changes

int scene=1; //create integer variable called scene and assign value of 1

void setup() {
  size (500, 500);
}


void draw() {
  background(255);
  if (scene==1) {
    ellipse(width/2, height/2, 100, 100);
  } else if (scene==2) {
    rect(width/2, height/2, 100, 100);
  } else if (scene==3) {
    rect (width/2, height/2, 300, 300);
  } 
  println(scene);
}

//change scene variable with keyPress
void keyPressed() {
  if (key=='1') {
    scene=1;
  } else if (key== '2') {
    scene=2;
  } else if (key=='3') {
    scene=3;
  }
}