//create a simple timer for a repeating trigger

int timer= 2000; // setting up timer variable for 2 second timer
int currentTime=0; 
int savedTime=0;

int ellipseX=0; //variable for x value of ellipse

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  currentTime= millis(); //update currentTime continuously
  ellipse(ellipseX, height/2, 100, 100); //draw ellipse
  
  //if 2 seconds passed since last time saved
  if (currentTime-savedTime > timer) { 
    println("time is triggered!");
    savedTime=currentTime; //assign value of current time to savedTime
    ellipseX= ellipseX+20; //increment ellipse
    fill(random(0, 255), random(0, 255), random(0, 255)); //change color
  } 

  // println("current time:  " + currentTime);
  // println("saved time:  " + savedTime);
}