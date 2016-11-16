// Code for sensing analogue sensor and writing the value to the serial port  
// Note: Serial monitor must be closed if Processing is trying to access the port

int sensorPin = 0; //sensor hooked up to analog pin 0
int val = 0;  //variable for storing value of sensor input

void setup() {
Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
val = analogRead(sensorPin); //read sensor and assign to variable called val
delay(100); // Wait 100 milliseconds
Serial.write(val);
}


