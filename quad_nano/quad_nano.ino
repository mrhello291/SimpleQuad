#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver myServo = Adafruit_PWMServoDriver();

#define SERVOMIN 246
#define SERVOMAX 491

uint8_t numberOfServos = 12;
int counter = 0;
int counter2 = 0;

uint16_t pwmFromAngle(float angle){
  angle = constrain(angle, 0, 180);
  uint16_t pwm = (angle - 0) * (SERVOMAX - SERVOMIN) / 180 + SERVOMIN;
  return pwm;
  
}

void setAngle(uint8_t pin, float angle){
  myServo.setPWM(pin, 0, pwmFromAngle(angle));
}

void setup() {
  Serial.begin(115200);
  myServo.begin();
  myServo.setPWMFreq(60);
}

void loop() {
  // // BL
  // setAngle(1, 180-counter2);
  // setAngle(0, 10+counter);
  // setAngle(2, 90);
  
  // // BR
  // setAngle(5, 0+counter2);
  // setAngle(4, 150-counter);
  // setAngle(6, 90);

  // // FL
  // setAngle(9, 180-counter2);
  // setAngle(8, 30+counter);
  // setAngle(10, 90);

  // // FR
  // setAngle(13, 0+counter2);
  // setAngle(12, 150-counter);
  // setAngle(14, 90);

  // counter += 10;
  // counter2 += 20;
  // if (counter > 60) counter = 0;
  // if (counter2 > 100) counter2 = 0;
  // delay(1000);

  // BL
  setAngle(1, 180);
  setAngle(0, 90);
  setAngle(2, 90);
  
  // BR
  setAngle(5, 0);
  setAngle(4, 90);
  setAngle(6, 90);

  // FL
  setAngle(9, 180);
  setAngle(8, 90);
  setAngle(10, 90);

  // FR
  setAngle(13, 0);
  setAngle(12, 90);
  setAngle(14, 90);

}