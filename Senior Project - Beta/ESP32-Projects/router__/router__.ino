#include <WiFi.h>        

void setup()
{
Serial.begin(9600);

  WiFi.disconnect();         
  delay(3000);      
  Serial.println("ECE 416");
  WiFi.softAP("Intelligent Door System");    
  delay(2000);
  Serial.println("Access Point IP address:");    
  Serial.println((WiFi.softAPIP()));        
  delay(7000);
  Serial.println("Initializing");
  WiFi.begin("wifi4beer","password");     
  while ((!(WiFi.status() == WL_CONNECTED))){    
    Serial.print(".");          
    delay(300);            

  }
  Serial.println("Connection Successful!");
  Serial.println("Local IP address:");       
  Serial.println((WiFi.localIP()));       
}


void loop()
{

    Serial.println("# of devices connected to this network");
    Serial.println((WiFi.softAPgetStationNum()));
    delay(7000);

}
