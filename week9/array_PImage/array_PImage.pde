//from demo on arrays
//load images into an array and display random image on mousePress()


PImage[] cake= new PImage [6];  // creates new PImage array called cake with 6 positions

int whichCake=0; // creates variable for tracking position in cake array

void setup(){
size(500,500);  

//loading each image individually
//see Shiffman section 15-4 for good short cuts
cake[0]= loadImage ("cake0.png");
cake[1]= loadImage ("cake1.png");
cake[2]= loadImage ("cake2.png");
cake[3]= loadImage ("cake3.png");
cake[4]= loadImage ("cake4.png");
cake[5]= loadImage ("cake5.png");
}
 
 
void draw(){
  background(0);
  imageMode(CENTER);
   image(cake[whichCake], width/2, height/2, 200, 200);
}

void mousePressed(){
  whichCake=int(random(0,6));
}