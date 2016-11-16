/*

Simple sketch for reading serial values from Arduino.
The size of an ellipse changes with sensor input.
Must assign the correct port in setup in order to read from Arduino.  
See instructions in setup for assigning port.
*/

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val; // creates variable for data coming from serial port

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

void draw(){
if ( myPort.available() > 0) { // If data is available,
val = myPort.read(); // read it and store it in val
}

//draws an ellipse that grows and shrinks in relation to val
background(255);
fill (0);
ellipse (width/2, height/2, val, val);
println (val);
}