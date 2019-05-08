#include <Servo.h>
Servo myservo;  // create servo object to control a servo

int pos = 0;    // variable to store the servo position

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);

myservo.attach(8);  // attaches the servo on pin 9 to the servo object
}

void loop() {
  // put your main code here, to run repeatedly:
int sensorValue = analogRead(A0);

Serial.println(sensorValue);
delay(1);

for (pos = 0; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);

}
  for (pos = 180; pos >= 0; pos -= 1) { // goes from 180 degrees to 0 degrees
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
}
