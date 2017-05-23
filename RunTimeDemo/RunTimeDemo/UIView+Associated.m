//
//  UIView+Associated.m
//  RunTimeDemo
//
//  Created by GrayLeo on 17/3/4.
//  Copyright © 2017年 HT-SOFT. All rights reserved.
//

#import "UIView+Associated.h"
#include <objc/runtime.h>

static const void *nameKey = &nameKey;

@implementation UIView (Associated)

- (void)setName:(NSString *)name {
    objc_setAssociatedObject(self, nameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    return objc_getAssociatedObject(self, nameKey);
}


@end
