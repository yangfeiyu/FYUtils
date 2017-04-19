//
//  FYRuntimeUtils.m
//  FYUtils
//
//  Created by 杨飞宇 on 2017/4/19.
//  Copyright © 2017年 FY. All rights reserved.
//

#import "FYRuntimeUtils.h"
#import <objc/runtime.h>

@implementation FYRuntimeUtils

+ (void)fyswizzleSEL:(SEL)originalSEL withSEL:(SEL)swizzledSEL forClass:(Class)clz {
    
    Method originalMethod = class_getInstanceMethod(clz, originalSEL);
    Method swizzledMethod = class_getInstanceMethod(clz, swizzledSEL);
    
    BOOL didAddMethod =
    class_addMethod(clz,
                    originalSEL,
                    method_getImplementation(swizzledMethod),
                    method_getTypeEncoding(swizzledMethod));
    
    if (didAddMethod) {
        class_replaceMethod(clz,
                            swizzledSEL,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

@end
