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

int exampleCallback(const char* data, void* user_data)
{
	DPRINTLN("Inside example callback");
	DPRINTLN(data);
	return 0;
}

int printCallback(const char* data, void* user_data)
{
	DPRINTLN(data);
	return 0;
}

int stage1(const char* data, void* user_data)
{
	DPRINTLN("Inside stage1 callback");
	DPRINTLN(data);
	
	int returnValue = 0;
	char* str = strstr(data, host2);
	if(str)
	{
		DPRINT("Found redirect: ");
		memset((char*)user_data, 0, 300);
		strcpy((char*)user_data, str + strlen(host2));
		DPRINTLN((char*)user_data);
		returnValue = 1;
	}
	return returnValue;
}

char request[400] = {0};
char buf[512] = {0};

//If callback returns 1, the connection is closed
void makeRequest(const char* host, int port, const char* url, int (*callback)(const char*, void*), void* user_data)
{
	WiFiClientSecure client;
	int stop = 0;
	
	memset(request, 0, 400);
	memset(buf, 0, 512);
	
	sprintf(request, httpGET, url, host);
	
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
				memset(buf, 0, 512);
				client.readBytesUntil('\n', buf, 512);
				stop = callback(buf, user_data);
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
}

void setup()
{
	DPRINT_SETUP(250000);
	connectToWifi();
}

char path[300] = {0};

void loop()
{
	DPRINTLN("");
	DPRINTLN("");
	DPRINTLN("STAGE 1");
	DPRINTLN("=======");
	DPRINTLN("");
	makeRequest(host, port, gscript, stage1, path);
	DPRINTLN("");
	DPRINTLN("");
	DPRINTLN("STAGE 2");
	DPRINTLN("=======");
	DPRINTLN("");
	makeRequest(host2, port, path, printCallback, NULL);
	delay(60000);
}