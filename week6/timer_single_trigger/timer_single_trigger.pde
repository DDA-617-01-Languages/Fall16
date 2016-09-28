//create a simple timer for one time trigger

int timer= 2000; // setting up timer variable for 2 second timer
int currentTime=0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  currentTime= millis(); //continuously update the time
  //if 2 seconds have passed the background turns black
  if (currentTime> timer) {  
    background(255);
  }  
  println(currentTime);
}