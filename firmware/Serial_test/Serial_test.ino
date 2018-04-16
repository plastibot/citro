
#include <Wire.h>
#include <Servo.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>



//  I2C Address 0x3C
#define OLED_RESET LED_BUILTIN
Adafruit_SSD1306 display(-1);


// ES08MDII Pulse Traveling 700us ~ 2300us (160 Degrees)
const int PWM_Frequency = 53;    // PWM frequency 50Hz
const int PWMRES_Min = 1;        // PWM Resolution 1
const int PWMRES_Max = 160;      // PWM Resolution 160
const int SERVOMIN = 145;        // 145
const int SERVOMAX = 472;        // 472


// Motion Data Index
int Servo_PROGRAM;
int Servo_PROGRAM_Stack;

// Servo ID
int GPIO_ID;
int GPIO12_PWM;
int GPIO13_PWM;
int GPIO14_PWM;
int GPIO16_PWM;

// Start GPIO Software Servo
Servo GPIO12SERVO;
Servo GPIO13SERVO;
Servo GPIO14SERVO;
Servo GPIO16SERVO;

// Serial port input
byte byteRead;
long num1, num2, num3, answer;
boolean mySwitch2=false;
boolean mySwitch3=false;


/*============================================================================*/
void check_serial() {

  while (Serial.available()) {
    //Read the most recent byte
    byteRead = Serial.read();

    //listen for numbers between 0-9
    if(byteRead>47 && byteRead<58){
       //number found
      
       /* If mySwitch is true, then populate the num1 variable
          otherwise populate the num2 variable*/
       if(!mySwitch2 && !mySwitch3){
         num1=byteRead-48;
       }
       if(mySwitch2 && !mySwitch3){
         num2=(num2*10)+(byteRead-48);
       }
       if(mySwitch2 && mySwitch3){
         
       }
    }
    
    /*Listen for an equal sign (byte code 61) 
      to calculate the answer and send it back to the
      serial monitor screen*/
    if(byteRead==61){
      if (num1==1){
        Servo_PROGRAM = num2;
        Servo_PROGRAM_Stack = 0;
        Servo_cancel_motion = 0;
      }
      if (num1==2) {
        Servo_PROGRAM_Stack = num2;
        Servo_PROGRAM = 0;
        Servo_cancel_motion = 0;
      }
      if (num1==3) {
        Servo_PROGRAM_Stack = 0;
        Servo_PROGRAM = 0;
        GPIO_ID = num2
        Servo_cancel_motion = 0;
      }
      if (num1==9) {
        if (num2==0) {
          Servo_cancel_motion = 1;
          Servo_PROGRAM = 0;
          Servo_PROGRAM_Stack = 0;
        }
        else {
          Servo_cancel_motion = 0;
          Servo_PROGRAM = 0;
          Servo_PROGRAM_Stack = 0;
        }
      }
      
      //Serial.print(num1);
      //Serial.print(",");
      //Serial.print(num2);
      //Serial.print("=");

      display.setCursor(0, 8);
      display.print("Ser= ");
      display.print(num1);
      display.print(",");
      display.print(num2);
      display.print("=");
      display.display();
      
      /* Reset the variables for the next round */
      num1=0;
      num2=0;
      num3=0;
      mySwitch2=false;
      mySwitch3=false;
      
    /* Listen for a comma (byte code 44). This is
       used as a delimiter to help define num1 from num2 */  
    }else if (byteRead==44){
      mySwitch=true;
    }
  }
}



/*============================================================================*/
void handleController()
{
  String pm = server.arg("pm");
  String pms = server.arg("pms");
  String gpid = server.arg("gpid");
  String servo = server.arg("servo");

  if (pm != "")
  {
    Servo_PROGRAM = pm.toInt();
  }

  if (pms != "")
  {
    Servo_PROGRAM_Stack = pms.toInt();
  }

  if (servo != "")
  {
    int Servo_ID = servo.toInt();
    String ival = server.arg("value");
    int Servo_PWM = ival.toInt() + (int8_t)EEPROM.read(Servo_ID);
    int pulselength = map(Servo_PWM, PWMRES_Min, PWMRES_Max, SERVOMIN, SERVOMAX);

    //Serial.print("Servo ID = ");
    //Serial.print(Servo_ID);
    //Serial.print(", PWM = ");
    //Serial.println(pulselength);

    pwm.setPWM(Servo_ID, 0, pulselength);
  }

  if (gpid != "" && Input_Voltage_Low == 0 )
  {
    GPIO_ID = gpid.toInt();

    if (GPIO_ID == 12) {
      String ival = server.arg("value");
      GPIO12_PWM = ival.toInt() + (int8_t)EEPROM.read(16);
      GPIO12SERVO.write(GPIO12_PWM);
    }

    if (GPIO_ID == 13) {
      String ival = server.arg("value");
      GPIO13_PWM = ival.toInt() + (int8_t)EEPROM.read(17);
      GPIO13SERVO.write(GPIO13_PWM);
    }

    if (GPIO_ID == 14) {
      String ival = server.arg("value");
      GPIO14_PWM = ival.toInt() + (int8_t)EEPROM.read(18);
      GPIO14SERVO.write(GPIO14_PWM);
    }

    if (GPIO_ID == 16) {
      String ival = server.arg("value");
      GPIO16_PWM = ival.toInt() + (int8_t)EEPROM.read(19);
      GPIO16SERVO.write(GPIO16_PWM);
    }
  }

  server.send(200, "text/html", "(pm, pms)=(" + pm + "," + pms + ")");
}


/*============================================================================*/
void setup(void) {

  Serial.begin(9600);
  //Serial.println("MiniPlan V6 Start");

  num1=0;
  num2=0;
  num3=0;


  // Initialize I2C
  Wire.begin(4, 5);
  Wire.setClock(400000);
  
  // Initialize I2C OLED
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);

  // Clear the buffer.
  display.clearDisplay();
  display.display();

  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0, OLED_Display_Index);
  //display.println("MiniPlan V6 Start !");
  display.display();


  // PWM Servo Driver
  pwm.begin();
  Get_PWM_Frequency();
  pwm.setPWMFreq(Set_PWM_Freq);

  // Software PWM PIN
  GPIO12SERVO.attach(12);
  GPIO13SERVO.attach(13);
  GPIO14SERVO.attach(14);
  GPIO16SERVO.attach(16);


  // Clear backup current motor value
  for ( int Index = 0; Index < ALLMATRIX; Index++)
  {
    Running_Servo_POS[Index] = Servo_Act_1[Index] + (int8_t)EEPROM.read(Index);
  }


  loop_timer = micros() + 4000;                                             //Set the loop_timer variable at the next end loop time

}

/*============================================================================*/
void loop(void) {

  // Check if there is serial message
  check_serial();


  // Basic Actions
  if (Servo_PROGRAM >= 1 && Input_Voltage_Low == 0 )
  {

    //Serial.print("Servo_PROGRAM = ");
    //Serial.println(Servo_PROGRAM);

    display.clearDisplay();
    display.setCursor(0, 24);
    display.print("Servo_PROGRAM = ");
    display.println(Servo_PROGRAM);
    display.display();

  }



  // Action Set
  if (Servo_PROGRAM_Stack >= 1 && Input_Voltage_Low == 0 )
  {

    //Serial.print("Servo_PRGRAM_Stack = ");
    //Serial.println(Servo_PROGRAM_Stack);
    
    display.setCursor(0, 24);
    display.print("Servo_PRG_Stack = ");
    display.println(Servo_PROGRAM_Stack);
    display.display();

  
  }




}


