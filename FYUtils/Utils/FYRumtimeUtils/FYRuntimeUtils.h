//
//  FYRuntimeUtils.h
//  FYUtils
//
//  Created by 杨飞宇 on 2017/4/19.
//  Copyright © 2017年 FY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FYRuntimeUtils : NSObject

+ (void)fyswizzleSEL:(SEL)originalSEL withSEL:(SEL)swizzledSEL forClass:(Class)clz;

@end
