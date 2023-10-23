#include <WiFi.h>          
#include <WebServer.h>     
#include <AutoConnect.h>   //Wifi Manager https://github.com/Hieromon/AutoConnect
#include <AutoConnectCredential.h>

#define ESP_SSID "ESP32" 
#define ESP_PASSWORD "ChipID12345" 

WiFiServer server(80);
WebServer Server;         
AutoConnect Portal(Server);
AutoConnectConfig Config;

void setup() {     
    Serial.begin(9600);
    pinMode (LED_BUILTIN, OUTPUT); //definning pairing LED 

void loop() {
   
}

void rootPage() {
  char content[] = "Smart Lock";
  Server.send(200, "text/plain", content);
}

//WiFI Pairing 
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
