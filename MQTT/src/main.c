#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include <fcntl.h>
#include <time.h>
#include <sys/ioctl.h>
#include <linux/ioctl.h>
#include <sys/stat.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>
#include "math.h"

#include "paho/MQTTClient.h"
#include "iotfclient.h"


#define ARRAY_SIZE(array) sizeof(array)/sizeof(array[0])
#define PI 3.14159265

int main(int argc, char const *argv[]){
	int rc = -1;
	int i;
	Iotfclient client;
	char * deviceId = NULL;
	char json_str[1000];

	deviceId = "adam11233";


	// for Quickstart, no need to pass the authmethod and token(last 2 params)
	rc = initialize(&client,"quickstart","iotsample",deviceId,NULL,NULL);

	if(rc != SUCCESS){
		printf("initialize failed and returned rc = %d.\n Quitting..", rc);
		return 0;
	}

	rc = connectiotf(&client);

	if(rc != SUCCESS){
		printf("Connection failed and returned rc = %d.\n Quitting..", rc);
		return 0;
	}

	printf("Connection Successful.\n");
	printf("View data at https://quickstart.internetofthings.ibmcloud.com/#/device/%s\n", deviceId);
	fflush(stdout);

	double val,data;
	while(1){
	for (int i=0;i<360;i=i+20){
		val = PI / 180;
		data = sin((double)i*val);
		sprintf(json_str, "{\"d\" : { \"Sine\": %f}}",data);
		rc= publishEvent(&client, "status","json", (unsigned char*)json_str, QOS0);
		usleep(1000);
		yield(&client, 1000);
	}
	i=0;
	}


}
