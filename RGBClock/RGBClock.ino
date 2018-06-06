#include <ESP8266WiFi.h>
#include <WiFiClientSecure.h>
#include <Adafruit_NeoPixel.h>
#include <time.h>

#include "user.h"
#include "digitmap.h"

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

const char* host		=	"script.google.com";
const char* host2		=	"script.googleusercontent.com";
const int port			=	443;

const char* httpGET		=	"GET %s HTTP/1.1\r\n"
							"Host: %s\r\n"
							"Connection: close\r\n"
							"\r\n";
							
const int pixelPin		= 14;

time_t currentTime;

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
	//DPRINTLN("Inside stage1 callback");
	//DPRINTLN(data);
	
	int returnValue = 0;
	char* str = strstr(data, host2);
	if(str)
	{
		//DPRINT("Found redirect: ");
		memset((char*)user_data, 0, 300);
		strcpy((char*)user_data, str + strlen(host2));
		//DPRINTLN((char*)user_data);
		returnValue = 1;
	}
	return returnValue;
}

int stage2(const char* data, void* user_data)
{
	//DPRINTLN("Inside stage2 callback");
	//DPRINTLN(data);
	if(data[0] == '|')
	{
		currentTime = atol(data+1);
	}
	//DPRINT("CurrentTime: ");
	//DPRINTLN(currentTime);
	return 0;
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
		//DPRINTLN("Sending GET request...");
		//DPRINTLN(request);
		client.print(request);
		
		//DPRINTLN("Response:");
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
		//DPRINTLN("Disconnected");
	}
	else
	{
		DPRINTLN("Failed to connect to: "); DPRINTLN(host);
		client.stop();
	}
}

Adafruit_NeoPixel strip = Adafruit_NeoPixel(7, pixelPin, NEO_GRB + NEO_KHZ800);
char path[300] = {0};

void setup()
{
	DPRINT_SETUP(250000);
	strip.begin();
	strip.show();
	connectToWifi();
	
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
	makeRequest(host2, port, path, stage2, NULL);
}


void displayDigit(int number, int offset, uint32_t color, uint32_t off)
{
	number %= 10;
	for(int i=0;i<7;i++)
	{
		char a = digitmap[number];
		char result = ((a << i) & 0b10000000) == 0b10000000;
		strip.setPixelColor(i + offset, result ? color : off);
	}
	strip.show();
}

void loop()
{
	currentTime++;
	
	struct tm* timeData = gmtime(&currentTime);
	
	DPRINT("Time: ");
	DPRINT(timeData->tm_hour);
	DPRINT(":");
	DPRINT(timeData->tm_min);
	DPRINT(":");
	DPRINTLN(timeData->tm_sec);
	
	uint32_t color = strip.Color(255, 64, 0);
	uint32_t off = strip.Color(0, 0, 0);
	
	displayDigit(timeData->tm_sec, 0, color, off);
	delay(1000);
}