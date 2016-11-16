// Arduino listens to the serial port for data coming in from Processing
// LED  turns on and off based on serial input value

//Arduino setup:
// LED is connected to pin 8


const int LED = 8; // the pin for the LED
int val = 0;  //variable for storing value from serial port

void setup() {
  pinMode(LED, OUTPUT);  // set LED as output
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  if (Serial.available()) {
    // If data is available to read,
    val = Serial.read(); // read it and store it in val
  }
  digitalWrite(LED, val); //write value to the LED


  delay(10); // Wait 100 milliseconds

}


