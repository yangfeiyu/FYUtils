//
//  FYLogUtils.h
//  FYUtils
//
//  Created by 杨飞宇 on 2017/4/19.
//  Copyright © 2017年 FY. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG

#define FYLog(tag, msg, args...) {\
NSLog(@"["tag@"]" msg, ## args); \
}

#else

#define FYLog(msg, args...)

#endif

@interface FYLogUtils : NSObject

@end
