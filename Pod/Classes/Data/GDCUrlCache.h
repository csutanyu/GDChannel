//
// Created by Larry Tin on 8/14/16.
//

#import <Foundation/Foundation.h>

@class GPBMessage;
@class GPBFieldMask;

NS_ASSUME_NONNULL_BEGIN
@interface GDCUrlCache : NSObject
+ (GDCUrlCache *)instance;

- (void)storeCachedMessage:(GPBMessage *)respMessage forPath:(NSString *)path andRequest:(GPBMessage *)reqMessage andKeys:(GPBFieldMask *)keys withMaxAge:(int)maxAge;

- (nullable __kindof GPBMessage *)cachedMessageForPath:(NSString *)path andRequest:(GPBMessage *)reqMessage andKeys:(GPBFieldMask *)keys expired:(BOOL *)expired;

@end
NS_ASSUME_NONNULL_END