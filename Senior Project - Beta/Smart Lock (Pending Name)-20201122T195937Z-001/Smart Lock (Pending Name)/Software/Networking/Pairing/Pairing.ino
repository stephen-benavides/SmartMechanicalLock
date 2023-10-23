/*
* 
*   Created on: March 19, 2019
*   Author: Gregory Escobar
*
*/

#include <esp32-hal-gpio.h> //GPIO initialization header file for ESP32
#include <Arduino.h>    //GPIO Arduino board 
#include <OneButton.h> //Detecting button behaviors library https://github.com/mathertel/OneButton
#include <WiFi.h>          
#include <WebServer.h>     
#include <AutoConnect.h>   //Wifi Manager https://github.com/Hieromon/AutoConnect
#include <AutoConnectCredential.h>


#define LED_BUILTIN 2 //declaring pairing LED pin
#define PAIRING_BUTTON 4 //declaring pairng button pin

#define SSID_BYTE_OFFSET 11

#define PAIRING_TIME 3000

#define ESP_SSID "ESP32" //need to figure out how to put this variable for the AP
#define ESP_PASSWORD "ChipID12345" //ChipID should be the password for the AP

#define SSID_TEST "Escobar-2.4"

OneButton button(PAIRING_BUTTON, true);

WiFiServer server(80);

WebServer Server;          // Replace with WebServer for ESP32
AutoConnect Portal(Server);

AutoConnectConfig Config;



void setup() {
    
    Serial.begin(115200);
    pinMode (LED_BUILTIN, OUTPUT); //definning pairing LED mode

    button.attachDuringLongPress(Wifipairing); //defining function to be executed if longpress was detected

    
  /* Deletes specific predential defined at SSID_TEST
   AutoConnectCredential deleting;
   deleting.del(SSID_TEST);
  */
    
}

void loop() {

   button.tick(); //check state of the button

   delay(10);
    
   
}

void rootPage() {
  char content[] = "Intelligent Door System";
  Server.send(200, "text/plain", content);
}
/////////////////////////////////////////////////////////
//                                                     //
//  Wifi Pairing Method                                //
//                                                     //
/////////////////////////////////////////////////////////
void Wifipairing(){   
  uint64_t chipid;
  chipid=ESP.getEfuseMac();
  
  ledblink(10,250,LED_BUILTIN);

   digitalWrite(LED_BUILTIN, HIGH);  

  Server.on("/", rootPage);
  
  Config.title = "Smart Lock";
  //Config.autoReconnect = true;
  Config.apid = ESP_SSID ; //+ (uint16_t)(chipid>>32)
  Config.psk = ESP_PASSWORD;
  Portal.config(Config);
  
  if (Portal.begin()) {
    Serial.println("WiFi connected: " + WiFi.localIP().toString()); 
  } 

  Portal.handleClient();

  digitalWrite(LED_BUILTIN, LOW);
}

void ledblink(int times, int lengthms, int pinnum){
  for (int x=0; x<times;x++) {
    digitalWrite(pinnum, HIGH);
    delay (lengthms);
    digitalWrite(pinnum, LOW);
    delay(lengthms);
  }
}


