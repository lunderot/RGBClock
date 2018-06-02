#include <ESP8266WiFi.h>
#include <WiFiClientSecure.h>

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
extern const char* gscript;

const char* host		=	"script.google.com";
const char* host2		=	"script.googleusercontent.com";
const int port			=	443;

const char* httpGET		=	"GET %s HTTP/1.1\r\n"
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

char request[256] = {0};
char buf[1024] = {0};
char path[512] = {0};

void loop()
{
	WiFiClientSecure client;
	bool stop = false;
	
	memset(request, 0, 256);
	memset(buf, 0, 1024);
	memset(path, 0, 512);
	
	sprintf(request, httpGET, gscript, host);
	
	if(client.connect(host, port))
	{
		DPRINTLN("Sending GET request...");
		DPRINTLN(request);
		client.print(request);
		
		DPRINTLN("Response:");
		while(client.connected() && !stop)
		{
			int available = client.available();
			if(available)
			{
				memset(buf, 0, 1024);
				client.readBytesUntil('\n', buf, 1024);
				DPRINTLN(buf);
				
				char* str = strstr(buf, host2);
				if(str)
				{
					DPRINT("Found redirect: ");
					strcpy(path, str + strlen(host2));
					DPRINTLN(path);
					stop = true;
				}
			}
			delay(available == 0 ? 300 : 10);
		}
		client.stop();
		DPRINTLN("Disconnected");
	}
	else
	{
		DPRINTLN("Failed to connect to: "); DPRINTLN(host);
		client.stop();
	}
	
	delay(60000);
}