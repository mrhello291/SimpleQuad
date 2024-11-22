#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>
#include <ros.h>
#include <std_msgs/Float64MultiArray.h>

Adafruit_PWMServoDriver myServo = Adafruit_PWMServoDriver();
ros::NodeHandle nh;

#define SERVOMIN 246
#define SERVOMAX 491

uint8_t numberOfServos = 12;
/*int counter = 0;
int counter2 = 0;
int state1 = 1;
int state2 = 1;
*/
float servo_angles[12] = {105, 70, 100, 105, 10, 180, 5, 170, 90, 90, 90, 90};
uint8_t servoPins[12] = {14, 10, 6, 2, 13, 9, 5, 1, 12, 8, 4, 0};
float def[12] = {105, 70, 100, 105, 10, 180, 5, 170, 90, 90, 90, 90};

uint16_t pwmFromAngle(float angle){
  angle = constrain(angle, 0, 180);
  uint16_t pwm = (angle - 0) * (SERVOMAX - SERVOMIN) / 180 + SERVOMIN;
  return pwm;
  
}

void setAngle(uint8_t pin, float angle){
  myServo.setPWM(pin, 0, pwmFromAngle(angle));
}

// Callback function to process received servo angles
void servoAnglesCallback(const std_msgs::Float64MultiArray& msg) {
  for (int i = 0; i < 12; i++) {
    servo_angles[i] = msg.data[i];
    if (servo_angles[i]){
    	setAngle(servoPins[i], servo_angles[i]);
	Serial.println("Angle Set to");
	Serial.println(servo_angles[i]);
    }
    else {
    	setAngle(servoPins[i], def[i]);
	Serial.println("Default Angle Set to");
	Serial.println(def[i]);
    }
  }
}

ros::Subscriber<std_msgs::Float64MultiArray> sub("servo_angles", servoAnglesCallback);

void setup() {
  Serial.begin(57600);
  myServo.begin();
  myServo.setPWMFreq(60);
  /*
  // Initialize ROS node
  nh.initNode();

  // Subscribe to the topic
  nh.subscribe(sub);
  Serial.println("Arduino ready to receive servo angles...");
	*/
}

void loop() {
  /*nh.spinOnce();  // Process incoming messages
  delay(10);      // Small delay for stability
*/

/*

  setAngle(0, 30+counter);
  setAngle(2, 90);
  
  // BR
  setAngle(5, 60+counter2);
  setAngle(4, 150-counter);
  setAngle(6, 95);

  // FL
  setAngle(9, 120-counter2);
  setAngle(8, 30+counter);
  setAngle(10, 80);

  // FR
  setAngle(13, 60+counter2);
  setAngle(12, 150-counter);
  setAngle(14, 105);

  counter += state1 * 60/9;
  counter2 += state2 * 120/9;

  // Reverse direction for `counter` if limits are exceeded
  if (counter > 60 || counter < 0) {
    state1 = -1*state1; // Flip direction
    counter += state1 * 2 * 60 / 9; // Correct the overshoot
  }

  // Reverse direction for `counter2` if limits are exceeded
  if (counter2 > 120 || counter2 < 0) {
    state2 = -1*state2; // Flip direction
    counter2 += state2 * 2 * 120 / 9; // Correct the overshoot
  }

  delay(1000);
*/
  // BL
  setAngle(1, 170);
  setAngle(0, 90);
  setAngle(2, 105);
  
  // BR
  setAngle(5, 5);
  setAngle(4, 90);
  setAngle(6, 100);

  // FL
  setAngle(9, 180);
  setAngle(8, 90);
  setAngle(10, 70);

  // FR
  setAngle(13, 10);
  setAngle(12, 90);
  setAngle(14, 75);
}
