/////////////////////////////////
// Generated with a lot of love//
// with TUNIOT FOR ESP32     //
// Website: Easycoding.tn      //
/////////////////////////////////
#include <WiFi.h>

void setup()
{
Serial.begin(9600);

  WiFi.disconnect();
  delay(3000);
  Serial.println("Initializing");
  WiFi.begin("wifi4beer","password");
  while ((!(WiFi.status() == WL_CONNECTED))){
    Serial.print("...");
    delay(300);

  }
  Serial.println("Connection Successful");
  Serial.println("Your IP is:");
  Serial.println((WiFi.localIP()));

}


void loop()
{


}