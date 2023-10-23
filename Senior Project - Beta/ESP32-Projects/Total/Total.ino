#include <WiFi.h>
#include <ESPmDNS.h>
#include "DHT.h"

String  ClientRequest;
WiFiServer server(80);
WiFiClient client;

String MakerIFTTT_Key ;
;String MakerIFTTT_Event;
char *append_str(char *here, String s) {  int i=0; while (*here++ = s[i]){i++;};return here-1;}
char *append_ul(char *here, unsigned long u) { char buf[20]; return append_str(here, ultoa(u, buf, 10));}
char post_rqst[256];char *p;char *content_length_here;char *json_start;int compi;

DHT dht26(26,DHT11); 

String myresultat;

String ReadIncomingRequest(){
while(client.available()) {
ClientRequest = (client.readStringUntil('\r'));
 if ((ClientRequest.indexOf("HTTP/1.1")>0)&&(ClientRequest.indexOf("/favicon.ico")<0)){
myresultat = ClientRequest;
}
}
return myresultat;
}

void setup()
{
ClientRequest = "";

Serial.begin(9600);

pinMode(18, OUTPUT);    //lock 
  WiFi.disconnect();
  delay(3000);
  Serial.println("Attempting Connection to the Internet");
  WiFi.begin("NoMaste","01234567");
  while ((!(WiFi.status() == WL_CONNECTED))){
    delay(300);
    Serial.print(".");

  }
  Serial.println("Connection Successful!");
  Serial.println("Place this IP into the search bar");
  Serial.println((WiFi.localIP()));
  if (client.connect("maker.ifttt.com",80)) {
    MakerIFTTT_Key ="dw0xd8PB96-eN7YKvji2lM";
    MakerIFTTT_Event ="test";
    p = post_rqst;
    p = append_str(p, "POST /trigger/");
    p = append_str(p, MakerIFTTT_Event);
    p = append_str(p, "/with/key/");
    p = append_str(p, MakerIFTTT_Key);
    p = append_str(p, " HTTP/1.1\r\n");
    p = append_str(p, "Host: maker.ifttt.com\r\n");
    p = append_str(p, "Content-Type: application/json\r\n");
    p = append_str(p, "Content-Length: ");
    content_length_here = p;
    p = append_str(p, "NN\r\n");
    p = append_str(p, "\r\n");
    json_start = p;
    p = append_str(p, "{\"value1\":\"");
    p = append_str(p, "zaidro995@gmail.com");
    p = append_str(p, "\",\"value2\":\"");
    p = append_str(p, "ESP 32 TEST");
    p = append_str(p, "\",\"value3\":\"");
    p = append_str(p, "If you received this message that means that the esp32 has been set up to send automatic messages every time an action has taken place");
    p = append_str(p, "\"}");

    compi= strlen(json_start);
    content_length_here[0] = '0' + (compi/10);
    content_length_here[1] = '0' + (compi%10);
    client.print(post_rqst);

    Serial.println("Success!");

  }
  if (!MDNS.begin("smartlock")) {     //smartlock.local
  Serial.println("Error setting up MDNS responder!");
  while(1) {
  delay(500);
   Serial.print(".");
  }
  }
MDNS.addService("http", "tcp", 80);

}


void loop()
{

    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("");
    client.println("<!DOCTYPE HTML>");
    client.println("<html>");
    client.println("<head>");
    client.println("</head>");
    client.println("<body>");
      client.println("<h1 style=""color:#000000"">");
      client.println("Web Page for Smart Door");
      client.println("</h1>");
      client.println("<span style=""color:#ff0000;font-size:18px"">");
      client.println("Active since");
      client.println("</span>");
      client.println("<span style=""color:#000099;font-size:14px"">");
      client.println((millis()/1000));
      client.println("</span>");
      client.println("<span style=""color:#000099;font-size:14px"">");
      client.println("Seconds");
      client.println("</span>");
      client.println("<br>");
      client.println("<span style=""color:#ff0000;font-size:18px"">");
      client.println("Temperature Sensor");
      client.println("</span>");
      client.println("<span style=""color:#000099;font-size:14px"">");
      client.println((dht26.readTemperature(true)));
      client.println("</span>");
      client.println("<span style=""color:#000099;font-size:14px"">");
      client.println("in Fahrenheit");
      client.println("</span>");
    client.println("</body>");
    client.println("</html>");
    client.stop();
     delay(1);
    client = server.available();
    if (!client) { return; }
    while(!client.available()){  delay(1); }
    ClientRequest = (ReadIncomingRequest());
    ClientRequest.remove(0, 5);
    ClientRequest.remove(ClientRequest.length()-9,9);
    if (ClientRequest == "OPEN") {
      digitalWrite(18,HIGH);
      if (client.connect("maker.ifttt.com",80)) {
        MakerIFTTT_Key ="dw0xd8PB96-eN7YKvji2lM";
        MakerIFTTT_Event ="test";
        p = post_rqst;
        p = append_str(p, "POST /trigger/");
        p = append_str(p, MakerIFTTT_Event);
        p = append_str(p, "/with/key/");
        p = append_str(p, MakerIFTTT_Key);
        p = append_str(p, " HTTP/1.1\r\n");
        p = append_str(p, "Host: maker.ifttt.com\r\n");
        p = append_str(p, "Content-Type: application/json\r\n");
        p = append_str(p, "Content-Length: ");
        content_length_here = p;
        p = append_str(p, "NN\r\n");
        p = append_str(p, "\r\n");
        json_start = p;
        p = append_str(p, "{\"value1\":\"");
        p = append_str(p, "zaidro995@gmail.com");
        p = append_str(p, "\",\"value2\":\"");
        p = append_str(p, "ESP 32 TEST");
        p = append_str(p, "\",\"value3\":\"");
        p = append_str(p, "If you received this message that means that the esp32 has been set up to send automatic messages every time an action has taken place");
        p = append_str(p, "\"}");

        compi= strlen(json_start);
        content_length_here[0] = '0' + (compi/10);
        content_length_here[1] = '0' + (compi%10);
        client.print(post_rqst);


        Serial.println("Success!");

      }

    }
    if (ClientRequest == "CLOSE") {
      digitalWrite(18,LOW);
      if (client.connect("maker.ifttt.com",80)) {
        MakerIFTTT_Key ="dw0xd8PB96-eN7YKvji2lM";
        MakerIFTTT_Event ="test";
        p = post_rqst;
        p = append_str(p, "POST /trigger/");
        p = append_str(p, MakerIFTTT_Event);
        p = append_str(p, "/with/key/");
        p = append_str(p, MakerIFTTT_Key);
        p = append_str(p, " HTTP/1.1\r\n");
        p = append_str(p, "Host: maker.ifttt.com\r\n");
        p = append_str(p, "Content-Type: application/json\r\n");
        p = append_str(p, "Content-Length: ");
        content_length_here = p;
        p = append_str(p, "NN\r\n");
        p = append_str(p, "\r\n");
        json_start = p;
        p = append_str(p, "{\"value1\":\"");
        p = append_str(p, "zaidro995@gmail.com");
        p = append_str(p, "\",\"value2\":\"");
        p = append_str(p, "ESP 32 TEST");
        p = append_str(p, "\",\"value3\":\"");
        p = append_str(p, "If you received this message that means that the esp32 has been set up to send automatic messages every time an action has taken place");
        p = append_str(p, "\"}");

        compi= strlen(json_start);
        content_length_here[0] = '0' + (compi/10);
        content_length_here[1] = '0' + (compi%10);
        client.print(post_rqst);


        Serial.println("Success!");

      }

    }
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("");
    client.println("<!DOCTYPE HTML>");
    client.println("<html>");
    client.println("OK");
    client.println("</html>");
    client.stop();
    delay(1);
    client.flush();

}
