#include <ESP8266WiFi.h>

#include "user.h"

#define DEBUG

#ifdef DEBUG
	#define DPRINT_SETUP(...)	do{Serial.begin(__VA_ARGS__);}while(0)
	#define DPRINT(...)			do{Serial.print(__VA_ARGS__);Serial.flush();}while(0)
	#define DPRINTLN(...)		do{Serial.println(__VA_ARGS__);Serial.flush();}while(0)
#else
	#define DPRINT_SETUP(...)
	#define DPRINT(...)
	#define DPRINTLN(...)
#endif

extern const char* ssid;
extern const char* password;
extern const char* gscript_url;

const char* host		=	"www.example.com";
const int port			=	80;

const char* httpGET		=	"GET / HTTP/1.1\r\n"
							"Host: %s\r\n"
							"Connection: close\r\n"
							"\r\n";

void connectToWifi()
{
	DPRINTLN();
	DPRINT("Connecting to wifi: ");
	DPRINTLN(ssid);
	
	WiFi.begin(ssid, password);
	while (WiFi.status() != WL_CONNECTED)
	{
		delay(500);
		DPRINT(".");
	}
	
	DPRINTLN("");
	DPRINTLN("WiFi connected");
	DPRINT("IP address: "); DPRINTLN(WiFi.localIP());
}

void setup()
{
	DPRINT_SETUP(250000);
	connectToWifi();
}

void loop()
{
	WiFiClient client;
	
	char request[128] = {0};
	char buf[1024] = {0};
	
	sprintf(request, httpGET, host);
	
	if(client.connect(host, port))
	{
		DPRINTLN("Sending GET request...");
		DPRINTLN(request);
		client.print(request);
		
		DPRINTLN("Response:");
		while(client.connected())
		{
			if(client.available())
			{
				memset(buf, 0, 1024);
				client.readBytesUntil('\n', buf, 1024);
				DPRINTLN(buf);
			}
		}
		client.stop();
		DPRINTLN("Disconnected");
	}
	else
	{
		DPRINTLN("Failed to connect to: "); DPRINTLN(host);
		client.stop();
	}
	
	delay(20000);
}