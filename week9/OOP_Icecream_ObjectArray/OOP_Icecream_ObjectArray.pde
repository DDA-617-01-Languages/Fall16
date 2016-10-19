
//from demo on OOP and arrays
//creates array of icecream objects with random x and y positions and fixed diameter of 65

//set up object array with global variable
Icecream[] icecreams= new Icecream[100];

void setup() {
  size (500, 500);
  //initialize objects by calling the constructor with a for loop
  for (int i=0; i<icecreams.length; i++){
    icecreams[i]= new Icecream(int(random(width)), int (random(height)), 65);
  }
}

void draw() {
  background(255);
  //call methods on the objects 
  //the for loop increments through each object in the array
  for(int i=0; i<icecreams.length; i++){
  icecreams[i].display(); 
  icecreams[i].fall();
  icecreams[i].grow();
  }
}