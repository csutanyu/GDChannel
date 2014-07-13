//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-channel/src/main/java/com/goodow/realtime/channel/mqtt/packet/MqttPacket.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeChannelMqttPacketMqttPacket_H_
#define _ComGoodowRealtimeChannelMqttPacketMqttPacket_H_

#import "JreEmulation.h"

#define ComGoodowRealtimeChannelMqttPacketMqttPacket_CONNACK 2
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_CONNECT 1
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_DISCONNECT 14
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_PINGREQ 12
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_PINGRESP 13
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_PUBACK 4
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_PUBCOMP 7
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_PUBLISH 3
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_PUBREC 5
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_PUBREL 6
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_SUBACK 9
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_SUBSCRIBE 8
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_UNSUBACK 11
#define ComGoodowRealtimeChannelMqttPacketMqttPacket_UNSUBSCRIBE 10

@interface ComGoodowRealtimeChannelMqttPacketMqttPacket : NSObject {
 @public
  BOOL dup_;
  char qos_;
  BOOL retain__;
}

- (id)init;

- (void)copyAllFieldsTo:(ComGoodowRealtimeChannelMqttPacketMqttPacket *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeChannelMqttPacketMqttPacket_init() {}

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, CONNECT, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, CONNACK, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, PUBLISH, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, PUBACK, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, PUBREC, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, PUBREL, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, PUBCOMP, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, SUBSCRIBE, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, SUBACK, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, UNSUBSCRIBE, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, UNSUBACK, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, PINGREQ, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, PINGRESP, char)

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeChannelMqttPacketMqttPacket, DISCONNECT, char)

#endif // _ComGoodowRealtimeChannelMqttPacketMqttPacket_H_