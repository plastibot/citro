# citro

A 3D Printed Biped Robot based on MiniPlan6 integrating a Pi Zero W, Pi Camera, Speakers, Microphone and Accelerometer.

## Firmware Installation Instructions

### Install Arduino
Install Arduino IDE 1.6.8 level which can be found on previous relelases at the Arduino website [here](https://www.arduino.cc/en/Main/OldSoftwareReleases#1.5.x)

### install ESP8266 suite
Starting with 1.6.4, Arduino allows installation of third-party platform packages using Boards Manager. 

- Start Arduino and open Preferences window.
- Enter http://arduino.esp8266.com/stable/package_esp8266com_index.json into Additional Board Manager URLs field. You can add * - multiple URLs, separating them with commas.
- Open Boards Manager from Tools > Board menu and install esp8266 platform.
- Select your ESP8266 board from Tools > Board menu after installation.

### Download tool for SPIFFS support

- Download the tool: https://github.com/esp8266/arduino-esp8266fs-plugin/releases/download/0.3.0/ESP8266FS-0.3.0.zip.
- In your Arduino sketchbook directory, create tools directory if it doesn’t exist yet
- Unpack the tool into tools directory (the path will look like <home_dir>/Arduino/tools/ESP8266FS/tool/esp8266fs.jar)
- Restart Arduino IDE

``` bash
$ cd ~/Arduino
$ makedir tools
$ cd tools
$ wget https://github.com/esp8266/arduino-esp8266fs-plugin/releases/download/0.3.0/ESP8266FS-0.3.0.zip
$ unzip ESP8266FS-0.3.0.zip
```

### Downloading required Libraries
Download the following libraries from adafruit into your Arduino/libraries folder

``` bash
$ cd ~/Arduino/libraries
$ git clone https://github.com/adafruit/Adafruit_SSD1306.git
$ git clone https://github.com/adafruit/Adafruit-GFX-Library.git
$ git clone https://github.com/adafruit/Adafruit-PWM-Servo-Driver-Library.git

```

### Clone Repository for Citro

```
$ cd ~
$ git clone https://github.com/plastibot/citro.git
```




