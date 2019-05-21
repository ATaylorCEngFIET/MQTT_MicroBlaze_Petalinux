################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/paho/MQTTClient.c \
../src/paho/MQTTConnectClient.c \
../src/paho/MQTTConnectServer.c \
../src/paho/MQTTDeserializePublish.c \
../src/paho/MQTTFormat.c \
../src/paho/MQTTLinux.c \
../src/paho/MQTTPacket.c \
../src/paho/MQTTSerializePublish.c \
../src/paho/MQTTSubscribeClient.c \
../src/paho/MQTTSubscribeServer.c \
../src/paho/MQTTUnsubscribeClient.c \
../src/paho/MQTTUnsubscribeServer.c 

OBJS += \
./src/paho/MQTTClient.o \
./src/paho/MQTTConnectClient.o \
./src/paho/MQTTConnectServer.o \
./src/paho/MQTTDeserializePublish.o \
./src/paho/MQTTFormat.o \
./src/paho/MQTTLinux.o \
./src/paho/MQTTPacket.o \
./src/paho/MQTTSerializePublish.o \
./src/paho/MQTTSubscribeClient.o \
./src/paho/MQTTSubscribeServer.o \
./src/paho/MQTTUnsubscribeClient.o \
./src/paho/MQTTUnsubscribeServer.o 

C_DEPS += \
./src/paho/MQTTClient.d \
./src/paho/MQTTConnectClient.d \
./src/paho/MQTTConnectServer.d \
./src/paho/MQTTDeserializePublish.d \
./src/paho/MQTTFormat.d \
./src/paho/MQTTLinux.d \
./src/paho/MQTTPacket.d \
./src/paho/MQTTSerializePublish.d \
./src/paho/MQTTSubscribeClient.d \
./src/paho/MQTTSubscribeServer.d \
./src/paho/MQTTUnsubscribeClient.d \
./src/paho/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
src/paho/%.o: ../src/paho/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MBEL Linux gcc compiler'
	microblazeel-xilinx-linux-gnu-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


