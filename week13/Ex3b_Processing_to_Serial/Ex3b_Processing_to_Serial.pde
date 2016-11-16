// Sketch writes value to serial port 

// Move the ellipse inside the rectangle to turn on LED connected to Arduino

/*

 Must assign the correct port in setup in order to read from Arduino.  
 See instructions in setup for assigning port.
 */

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val; // creates variable for sending data to serial port

void setup() {
  size(400, 400);
  /*
We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 2 and so I open Serial.list()[2].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[2]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() { 
  background(255);


  fill(255, 0, 0);
  textSize(22);
  textAlign(CENTER);
  text("PLEASE TURN THE LIGHT ON", width/2, height/4);
  fill(0);
  rectMode(CENTER);
  rect(width/2, height/2, 100, 100);
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 50, 50);    


  // if ellipse is inside rect boundaries, val is 1, else val is 0
  if (mouseX >width/2-50 && mouseX<width/2+50 && mouseY>height/2-50 && mouseY<height/2+50) {
    val=1;
  } else {
    val=0;
  }

  myPort.write(val); // write val to serial port


  println (val);
}