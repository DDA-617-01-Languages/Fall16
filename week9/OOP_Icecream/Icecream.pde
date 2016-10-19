//define the class outside of setup() and draw()
//can be placed below draw or as a separate tab like this
//name of class gets capitalized

class Icecream {
  //instance variables
  int x;
  int y;
  int diameter;

  //constructor
  //like setup() function within class
  //constructor arguments are temporary and used to initialize variables inside object
  Icecream(int tempX, int tempY, int tempDiameter) {
    x= tempX;
    y= tempY;
    diameter= tempDiameter;
  }

  //methods 
  //these are functions for the object
  void display() {
    triangle(x, y, x+50, y, x+25, y+100);
    ellipse(x+25, y, diameter, diameter);
  } 

  void fall() {
    if (y>height+100) {
      y=-100;
    } else {
      y++;
    }
  }

  void grow() {
    diameter=constrain(diameter, 0, width);
    if (keyPressed) {
      if (key== '1') {
        diameter++;
      } else if (key=='2') {
        diameter--;
      }
    }
  }
}