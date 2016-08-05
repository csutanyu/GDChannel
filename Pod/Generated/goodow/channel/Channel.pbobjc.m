// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: channel.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/Any.pbobjc.h>
#else
 #import "Any.pbobjc.h"
#endif

 #import "Channel.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDCPBChannelRoot

@implementation GDCPBChannelRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[GPBAnyRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - GDCPBChannelRoot_FileDescriptor

static GPBFileDescriptor *GDCPBChannelRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"goodow.channel"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GDCPBMessage

@implementation GDCPBMessage

@dynamic topic;
@dynamic hasPayload, payload;
@dynamic hasOptions, options;
@dynamic replyTopic;
@dynamic local;
@dynamic send;

typedef struct GDCPBMessage__storage_ {
  uint32_t _has_storage_[1];
  NSString *topic;
  GPBAny *payload;
  GDCPBMessage_Options *options;
  NSString *replyTopic;
} GDCPBMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "topic",
        .dataTypeSpecific.className = NULL,
        .number = GDCPBMessage_FieldNumber_Topic,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDCPBMessage__storage_, topic),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payload",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBAny),
        .number = GDCPBMessage_FieldNumber_Payload,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDCPBMessage__storage_, payload),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "options",
        .dataTypeSpecific.className = GPBStringifySymbol(GDCPBMessage_Options),
        .number = GDCPBMessage_FieldNumber_Options,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDCPBMessage__storage_, options),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "replyTopic",
        .dataTypeSpecific.className = NULL,
        .number = GDCPBMessage_FieldNumber_ReplyTopic,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDCPBMessage__storage_, replyTopic),
        .flags = GPBFieldOptional | GPBFieldTextFormatNameCustom,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "local",
        .dataTypeSpecific.className = NULL,
        .number = GDCPBMessage_FieldNumber_Local,
        .hasIndex = 4,
        .offset = 5,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "send",
        .dataTypeSpecific.className = NULL,
        .number = GDCPBMessage_FieldNumber_Send,
        .hasIndex = 6,
        .offset = 7,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDCPBMessage class]
                                     rootClass:[GDCPBChannelRoot class]
                                          file:GDCPBChannelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDCPBMessage__storage_)
                                         flags:0];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\004\n\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDCPBMessage_Options

@implementation GDCPBMessage_Options

@dynamic retained;
@dynamic patch;
@dynamic timeout;
@dynamic hasExtras, extras;

typedef struct GDCPBMessage_Options__storage_ {
  uint32_t _has_storage_[1];
  GPBAny *extras;
  int64_t timeout;
} GDCPBMessage_Options__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "retained",
        .dataTypeSpecific.className = NULL,
        .number = GDCPBMessage_Options_FieldNumber_Retained,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "patch",
        .dataTypeSpecific.className = NULL,
        .number = GDCPBMessage_Options_FieldNumber_Patch,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "timeout",
        .dataTypeSpecific.className = NULL,
        .number = GDCPBMessage_Options_FieldNumber_Timeout,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDCPBMessage_Options__storage_, timeout),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "extras",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBAny),
        .number = GDCPBMessage_Options_FieldNumber_Extras,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDCPBMessage_Options__storage_, extras),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDCPBMessage_Options class]
                                     rootClass:[GDCPBChannelRoot class]
                                          file:GDCPBChannelRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDCPBMessage_Options__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
