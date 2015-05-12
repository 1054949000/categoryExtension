//
//  UIView+zbb.m
//  runtime
//
//  Created by 朱冰冰 on 15/5/12.
//  Copyright (c) 2015年 朱冰冰. All rights reserved.
//

#import "UIView+zbb.h"
#import "objc/message.h"

@implementation UIView (zbb)

static double TestTestKey;

-(void)setTestTest:(double)testTest
{
    objc_setAssociatedObject(self, &TestTestKey, @(testTest), OBJC_ASSOCIATION_ASSIGN);
}

-(double)testTest
{
    double temp = [objc_getAssociatedObject(self, &TestTestKey) doubleValue];
    return temp;
}

@end
