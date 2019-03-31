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

time_t currentTime = 1;
time_t alarm = 0;

Adafruit_NeoPixel strip = Adafruit_NeoPixel(7*4 +2, pixelPin, NEO_GRB + NEO_KHZ800);
char redirect_path[300] = {0};


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
	DPRINT("IP address: ");
	DPRINTLN(WiFi.localIP());
}

int find_redirect_path(const char* data, void* redirect_path)
{
	//DPRINTLN("Inside find_redirect_path callback");
	//DPRINTLN(data);
	
	int returnValue = 0;
	char* str = strstr(data, host2);
	if(str)
	{
		//DPRINT("Found redirect: ");
		memset((char*)redirect_path, 0, 300);
		strcpy((char*)redirect_path, str + strlen(host2));
		//DPRINTLN((char*)redirect_path);
		returnValue = 1;
	}
	return returnValue;
}

int get_time(const char* data, void* user_data)
{
	DPRINTLN("Inside get_time callback");
	DPRINTLN(data);
	sscanf(data, "|%lu %lu", &currentTime, &alarm);
	DPRINT("CurrentTime: ");
	DPRINTLN(currentTime);
	DPRINT("Alarm: ");
	DPRINTLN(alarm);
	return 0;
}

//If callback returns 1, the connection is closed
void makeRequest(const char* host, int port, const char* url, int (*callback)(const char*, void*), void* user_data)
{
	WiFiClientSecure client;
	int stop = 0;
	char buf[512] = {0};
	char request[400] = {0};
	
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

void updateTime()
{
	makeRequest(host, port, gscript, find_redirect_path, redirect_path);
	makeRequest(host2, port, redirect_path, get_time, NULL);
}

void timer0_ISR(void)
{
	timer0_write(ESP.getCycleCount() + 80000000L); // 80MHz == 1sec

	currentTime++;
	struct tm* timeData = gmtime(&currentTime);
	DPRINT("Time: ");
	DPRINT(timeData->tm_hour);
	DPRINT(":");
	DPRINT(timeData->tm_min);
	DPRINT(":");
	DPRINTLN(timeData->tm_sec);
	DPRINTLN("timer0_ISR");

	uint32_t color = strip.Color(255, 0, 0);
	uint32_t off = strip.Color(0, 0, 0);
	
	char disp[5] = {0};
	
	sprintf(disp, "%.2d%.2d", timeData->tm_hour, timeData->tm_min);
	displayNumber(disp, color, off);
	
	uint32_t digitColor = timeData->tm_sec % 2 ? color : off;
	strip.setPixelColor(7*4+0, digitColor);
	strip.setPixelColor(7*4+1, digitColor);
	
	strip.show();
}

void setup()
{
	DPRINT_SETUP(250000);

	strip.begin();

	noInterrupts();
	timer0_isr_init();
	timer0_attachInterrupt(timer0_ISR);
	timer0_write(ESP.getCycleCount() + 80000000L);
	interrupts();

	connectToWifi();
	updateTime();
}


void displayDigit(int number, int offset, uint32_t color, uint32_t off)
{
	number %= 10;
	for(int i=0;i<7;i++)
	{
		char result = ((digitmap[number] << i) & 0b10000000) == 0b10000000;
		strip.setPixelColor(i + offset, result ? color : off);
	}
}

void displayNumber(char* num, uint32_t color, uint32_t off)
{
	for(int i=0;i<4;i++)
	{
		displayDigit(num[i] - '0', i*7, color, off);
	}
}

void loop()
{
}