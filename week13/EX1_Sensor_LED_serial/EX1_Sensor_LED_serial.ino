//modified version of example 5-4 in Getting Started with Arduino

//Anologue sensor lights up LED based on sensor input and prints to serial

//Arduino setup:
// Aduino is connected with anologue sensor such as LDR or FSR to anologue pin 0
// LED is connected to PWM pin 6
// Can use 10K resistors for both
// Diagram help: https://cdn.sparkfun.com/assets/learn_tutorials/3/1/0/Arduino_circuit_06_01.png


const int LED = 6; // the pin for the LED, one of the PWM pins

int val = 0; //variable to store value coming from sensor

void setup() {
  pinMode(LED, OUTPUT);  // set LED as output
  Serial.begin(9600);  // start the serial monitor
  //open up serial monitor in menu under Tools to read
}

void loop() {
  val = analogRead(0);  // read the value from pin 0
  digitalWrite(LED, val / 4); //write a fraction of value to the LED

  delay(10);  //stops program for 10 milliseconds
  Serial.println(val);  // print value of val to serial monitor
}
