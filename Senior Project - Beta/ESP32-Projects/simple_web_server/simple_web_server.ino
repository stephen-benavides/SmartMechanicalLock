#include <WiFi.h>

WiFiServer server(80); // Im using server port 80 as is the most commonly use port. You told me that gregory 

WiFiClient client;

void setup()
{
Serial.begin(9600);

  WiFi.disconnect();    //this part of the code is basically the same as the wifi test that I posted first 
  delay(1000);
  Serial.println("Attempting to connect to the network");
  WiFi.begin("NoMaste","01234567");  // remember ssid and password, change this values with your router 
  while ((!(WiFi.status() == WL_CONNECTED))){
    Serial.print(".");
    delay(300);

  }
  Serial.println("Connection Successful!");
  Serial.println((WiFi.localIP()));
  server.begin();

}


void loop()
{

    client = server.available();    //basic information, the only think that i added was 1 lines and the font color 
    if (!client) { return; }
    while(!client.available()){  delay(1); }
    client.flush();
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("");
    client.println("<!DOCTYPE HTML>");
    client.println("<html>");
    client.println("<head>");
    client.println("</head>");
    client.println("<body>");
      client.println("<h1 style=""color:#ff0000"">");
      client.println("If you read this then you are gay lol");
      client.println("</h1>");
    client.println("</body>");
    client.println("</html>");
    client.stop();
     delay(1);

}
