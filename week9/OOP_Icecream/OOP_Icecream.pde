//from demo on OOP: creating objects and classes
//rewrites the icecream function sketch and adds additional methods


//set up global variables for the objects
//className nameOfObject;
Icecream icecream1;
Icecream icecream2;

void setup() {
  size (500, 500);
  //initialize objects in setup() by calling the constructor
  //nameOfObject= new ClassName();
  icecream1= new Icecream(100, 250, 65);
  icecream2= new Icecream(300, 350, 75);
}

void draw() {
  background(255);
  //call methods on the object from within draw()
  icecream1.display(); 
  icecream2.display();
  icecream1.fall();
  icecream2.fall();
  icecream1.grow();
  icecream2.grow();
}