//example from demo introducing p5.js


//variables are declared with "var" without specified data types

var r = 255; //setting up variables for background color
var g = 100;
var b = 99.8;

var message = "hello"; //note the String is still declared simply with var


function setup() { //change void setup() to function setup()
  createCanvas(500, 500); //use CreateCanvas() instead of Size()
}


function draw() { //change void draw() to function draw()
  background(r, g, b);
  fill(0);
  textSize(44);
  textAlign(CENTER);
  //drawing a bunch of lines
  for (var i = 0; i < width; i += 10) { //note the var with no data type when initializing the for loop
    line(mouseX, i, i, mouseY);
  }
  ellipse(mouseX, mouseY, 50, 50);
  if (mouseIsPressed) { //slight change from mousePressed variable
    text(message, width / 2, height / 2);
  }
  console.log(frameRate());
}


function mousePressed() {
  r = random(255);
  g = random(255);
  b = random(255);
  console.log("you pressed the mouse"); // println() or print() may also work or may give errors 
}