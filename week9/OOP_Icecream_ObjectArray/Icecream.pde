class Icecream {
  //instance variables
  int x;
  int y;
  int diameter;

  //constructor
  Icecream(int tempX, int tempY, int tempDiameter) {
    x= tempX;
    y= tempY;
    diameter= tempDiameter;
  }

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
        y++;
        x++;
        diameter++;
      } else if (key=='2') {
        y--;
        x--;
        diameter--;
      }
    }
  }
}