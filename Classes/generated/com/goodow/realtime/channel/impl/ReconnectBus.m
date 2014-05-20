//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-channel/src/main/java/com/goodow/realtime/channel/impl/ReconnectBus.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/goodow/realtime/channel/BusHook.h"
#include "com/goodow/realtime/channel/State.h"
#include "com/goodow/realtime/channel/impl/ReconnectBus.h"
#include "com/goodow/realtime/channel/impl/SimpleBus.h"
#include "com/goodow/realtime/channel/impl/WebSocketBus.h"
#include "com/goodow/realtime/channel/util/FuzzingBackOffGenerator.h"
#include "com/goodow/realtime/core/Platform.h"
#include "com/goodow/realtime/core/Scheduler.h"
#include "com/goodow/realtime/core/WebSocket.h"
#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "java/lang/Void.h"

@implementation GDCReconnectBus

NSString * GDCReconnectBus_AUTO_RECONNECT_ = @"reconnect";

- (id)initWithNSString:(NSString *)url
      withGDJsonObject:(id<GDJsonObject>)options {
  if (self = [super initWithNSString:url withGDJsonObject:options]) {
    queuedMessages_ = [GDJson createArray];
    self->options_ = options;
    reconnect__ = options == nil || ![options has:GDCReconnectBus_AUTO_RECONNECT_] ? YES : [options getBoolean:GDCReconnectBus_AUTO_RECONNECT_];
    backOffGenerator_ = [[ComGoodowRealtimeChannelUtilFuzzingBackOffGenerator alloc] initWithInt:1 * 1000 withInt:30 * 60 * 1000 withDouble:0.5];
    (void) [super setHookWithGDCBusHook:[[GDCReconnectBus_$1 alloc] initWithGDCReconnectBus:self]];
  }
  return self;
}

- (void)reconnect {
  if ([self getReadyState] == GDCStateEnum_get_OPEN() || [self getReadyState] == GDCStateEnum_get_CONNECTING()) {
    return;
  }
  if (webSocket_ != nil) {
    [webSocket_ close];
  }
  [self connectWithNSString:url_ withGDJsonObject:options_];
}

- (GDCSimpleBus *)setHookWithGDCBusHook:(id<GDCBusHook>)hook {
  self->hook_ReconnectBus_ = hook;
  return self;
}

- (void)doClose {
  reconnect__ = NO;
  [((ComGoodowRealtimeChannelUtilFuzzingBackOffGenerator *) nil_chk(backOffGenerator_)) reset];
  (void) [((id<GDJsonArray>) nil_chk(queuedMessages_)) clear];
  [super doClose];
}

- (void)sendWithGDJsonObject:(id<GDJsonObject>)msg {
  if ([self getReadyState] == GDCStateEnum_get_OPEN()) {
    [super sendWithGDJsonObject:msg];
    return;
  }
  if (reconnect__) {
    [self reconnect];
  }
  NSString *type = [((id<GDJsonObject>) nil_chk(msg)) getString:GDCWebSocketBus_get_TYPE_()];
  if ([@"ping" isEqual:type] || [@"register" isEqual:type]) {
    return;
  }
  (void) [((id<GDJsonArray>) nil_chk(queuedMessages_)) push:msg];
}

- (void)copyAllFieldsTo:(GDCReconnectBus *)other {
  [super copyAllFieldsTo:other];
  other->backOffGenerator_ = backOffGenerator_;
  other->hook_ReconnectBus_ = hook_ReconnectBus_;
  other->options_ = options_;
  other->queuedMessages_ = queuedMessages_;
  other->reconnect__ = reconnect__;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withGDJsonObject:", "ReconnectBus", NULL, 0x1, NULL },
    { "reconnect", NULL, "V", 0x1, NULL },
    { "setHookWithGDCBusHook:", "setHook", "Lcom.goodow.realtime.channel.impl.SimpleBus;", 0x1, NULL },
    { "doClose", NULL, "V", 0x4, NULL },
    { "sendWithGDJsonObject:", "send", "V", 0x4, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "AUTO_RECONNECT_", NULL, 0x19, "Ljava.lang.String;", &GDCReconnectBus_AUTO_RECONNECT_,  },
    { "backOffGenerator_", NULL, 0x12, "Lcom.goodow.realtime.channel.util.FuzzingBackOffGenerator;", NULL,  },
    { "hook_ReconnectBus_", "hook", 0x2, "Lcom.goodow.realtime.channel.BusHook;", NULL,  },
    { "reconnect__", "reconnect", 0x2, "Z", NULL,  },
    { "queuedMessages_", NULL, 0x12, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "options_", NULL, 0x12, "Lcom.goodow.realtime.json.JsonObject;", NULL,  },
  };
  static J2ObjcClassInfo _GDCReconnectBus = { "ReconnectBus", "com.goodow.realtime.channel.impl", NULL, 0x1, 5, methods, 6, fields, 0, NULL};
  return &_GDCReconnectBus;
}

@end

@implementation GDCReconnectBus_$1

- (void)handleOpened {
  [((ComGoodowRealtimeChannelUtilFuzzingBackOffGenerator *) nil_chk(this$0_->backOffGenerator_)) reset];
  [this$0_ login:nil token:nil replyHandler:nil];
  IOSObjectArray *addresses = [((id<GDJsonObject>) nil_chk(this$0_->handlerCount_)) keys];
  {
    IOSObjectArray *a__ = addresses;
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *address = (*b__++);
      NSAssert([this$0_->handlerCount_ getNumber:address] > 0, [[NSString stringWithFormat:@"Handlers registried on %@ shouldn't be empty" J2OBJC_COMMA() address] description]);
      [this$0_ sendUnregisterWithNSString:address];
      [this$0_ sendRegisterWithNSString:address];
    }
  }
  if ([((id<GDJsonArray>) nil_chk(this$0_->queuedMessages_)) count] > 0) {
    id<GDJsonArray> copy_ = [this$0_->queuedMessages_ copy__];
    (void) [this$0_->queuedMessages_ clear];
    [((id<GDJsonArray>) nil_chk(copy_)) forEach:[[GDCReconnectBus_$1_$1 alloc] initWithGDCReconnectBus_$1:self]];
  }
  [super handleOpened];
}

- (void)handlePostClose {
  if (this$0_->reconnect__) {
    [((id<ComGoodowRealtimeCoreScheduler>) nil_chk([ComGoodowRealtimeCorePlatform scheduler])) scheduleDelayWithInt:((ComGoodowRealtimeChannelUtilFuzzingBackOffGenerator_BackOffParameters *) nil_chk([((ComGoodowRealtimeChannelUtilFuzzingBackOffGenerator *) nil_chk(this$0_->backOffGenerator_)) next]))->targetDelay_ withComGoodowRealtimeCoreHandler:[[GDCReconnectBus_$1_$2 alloc] initWithGDCReconnectBus_$1:self]];
  }
  [super handlePostClose];
}

- (id<GDCBusHook>)delegate {
  return this$0_->hook_ReconnectBus_;
}

- (id)initWithGDCReconnectBus:(GDCReconnectBus *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "handleOpened", NULL, "V", 0x1, NULL },
    { "handlePostClose", NULL, "V", 0x1, NULL },
    { "delegate", NULL, "Lcom.goodow.realtime.channel.BusHook;", 0x4, NULL },
    { "initWithGDCReconnectBus:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.channel.impl.ReconnectBus;", NULL,  },
  };
  static J2ObjcClassInfo _GDCReconnectBus_$1 = { "$1", "com.goodow.realtime.channel.impl", "ReconnectBus", 0x8000, 4, methods, 1, fields, 0, NULL};
  return &_GDCReconnectBus_$1;
}

@end

@implementation GDCReconnectBus_$1_$1

- (void)callWithInt:(int)index
             withId:(id<GDJsonObject>)msg {
  [this$0_->this$0_ sendWithGDJsonObject:msg];
}

- (id)initWithGDCReconnectBus_$1:(GDCReconnectBus_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithInt:withGDJsonObject:", "call", "V", 0x1, NULL },
    { "initWithGDCReconnectBus_$1:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.channel.impl.ReconnectBus$1;", NULL,  },
  };
  static J2ObjcClassInfo _GDCReconnectBus_$1_$1 = { "$1", "com.goodow.realtime.channel.impl", "ReconnectBus$$1", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_GDCReconnectBus_$1_$1;
}

@end

@implementation GDCReconnectBus_$1_$2

- (void)handleWithId:(id)event {
  if (this$0_->this$0_->reconnect__) {
    [this$0_->this$0_ reconnect];
  }
}

- (id)initWithGDCReconnectBus_$1:(GDCReconnectBus_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "handleWithJavaLangVoid:", "handle", "V", 0x1, NULL },
    { "initWithGDCReconnectBus_$1:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.channel.impl.ReconnectBus$1;", NULL,  },
  };
  static J2ObjcClassInfo _GDCReconnectBus_$1_$2 = { "$2", "com.goodow.realtime.channel.impl", "ReconnectBus$$1", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_GDCReconnectBus_$1_$2;
}

@end