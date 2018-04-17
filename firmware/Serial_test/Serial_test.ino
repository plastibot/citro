#include <SPI.h>
#include <Wire.h>
#include <Servo.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>


//  I2C Address 0x3C
#define OLED_RESET LED_BUILTIN
Adafruit_SSD1306 display(-1);

// Serial port input
byte byteRead;
long num1, num2, num3;
long number1, number2, number3;
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
         num3=(num3*10)+(byteRead-48);
       }
    }
    
    /*Listen for an equal sign (byte code 61) 
      to calculate the answer and send it back to the
      serial monitor screen*/
    if(byteRead==61){
      number1 = num1;
      number2 = num2;
      number3 = num3;
      
      
      Serial.print(num1);
      Serial.print(",");
      Serial.print(num2);
      Serial.print(",");
      Serial.print(num3);
      Serial.println("=");

      //display.setCursor(0, 0);
      //display.print("Ser= ");
      //display.print(num1);
      //display.print(",");
      //display.print(num2);
      //display.print("=");
      //display.display();
      
      /* Reset the variables for the next round */
      num1=0;
      num2=0;
      num3=0;
      mySwitch2=false;
      mySwitch3=false;
      
    /* Listen for a comma (byte code 44). This is
       used as a delimiter to help define num1 from num2 */  
    }else if (byteRead==44 && !mySwitch2){
      mySwitch2=true;
    }else if (byteRead==44 && mySwitch2 && !mySwitch3){
      mySwitch3=true;
    }
  }
}






/*============================================================================*/
void setup(void) {

  Serial.begin(9600);
  Serial.println("Serial Started");

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
  display.setCursor(0, 0);
  //display.println("MiniPlan V6 Start !");
  display.display();

}

/*============================================================================*/
void loop(void) {

  // Check if there is serial message
  check_serial();


  //Serial.print("Started loop ");
  //Serial.println(Servo_PROGRAM);

  display.clearDisplay();
  display.setCursor(0, 0);
  display.print("num1 = ");
  display.println(number1);

  display.setCursor(0, 8);
  display.print("num2 = ");
  display.println(number2);

  display.setCursor(0, 16);
  display.print("num3 = ");
  display.println(number3);
  display.display();



}


