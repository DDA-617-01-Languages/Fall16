//From demo on functions
//Creating user-defined function for drawing ice cream cones


void setup() {
  size (500, 500);
}

void draw() {
  background (255);
  //call up the icecream function with different arguments
  icecream(50, 200, 65, 170, 230, 180, "mint"); //mint flavor
  icecream(200, 150, 75, 245, 120, 200, "bubble gum"); //bubble gum flavor
  icecream(350, 300, 80, 80, 190, 230, "blue moon");  //blue moon flavor
}


void icecream(int x, int y, int diameter, int r, int g, int b, String flavor) {  
  fill(170, 120, 35); //brown cone color 
  triangle(x, y, x+50, y, x+25, y+100);
  fill (r, g, b); //customized ice cream color
  ellipse(x+25, y, diameter, diameter);
  textAlign(CENTER);
  textSize(22);
  text(flavor, x+25, y+125);
}