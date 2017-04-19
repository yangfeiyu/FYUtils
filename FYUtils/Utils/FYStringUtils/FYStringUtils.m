//
//  FYStringUtils.m
//  FYUtils
//
//  Created by 杨飞宇 on 2017/4/19.
//  Copyright © 2017年 FY. All rights reserved.
//

#import "FYStringUtils.h"
#import "mach/mach_init.h"
#import "mach/task.h"
#import <mach/mach.h>
#import <CommonCrypto/CommonDigest.h>

#define MD5_CHAR_TO_STRING_16 [NSString stringWithFormat:               \
@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",    \
result[0], result[1], result[2], result[3],                             \
result[4], result[5], result[6], result[7],                             \
result[8], result[9], result[10], result[11],                           \
result[12], result[13], result[14], result[15]]                         \

@implementation FYStringUtils

+ (NSString *)md5:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (int)strlen(cStr), result);
    return MD5_CHAR_TO_STRING_16;
}


@end
