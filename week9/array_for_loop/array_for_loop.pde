//from demo on arrays
//drawing with arrays using for loops


int[] pointX= new int[100];
int[] pointY= new int[100];

void setup() {
  size(500, 500);

  //initializing the array with for loop and random numbers
  for (int i=0; i<100; i++) {
    pointX[i]= int (random(width));
    pointY[i]= int (random(height));
  }
}

void draw() {
  background(0);
  stroke(100);
  noFill();
  for (int i=0; i<pointX.length; i++) {
    ellipse(pointX[i], pointY[i], 20, 20);
  }

  stroke(255, 0, 0);
  for (int i=0; i<100; i++) {
    line (pointX[i], pointY[i], mouseX, mouseY);
  }
}