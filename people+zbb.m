//
//  people+zbb.m
//  runtime
//
//  Created by 朱冰冰 on 15/5/12.
//  Copyright (c) 2015年 朱冰冰. All rights reserved.
//


#import "people+zbb.h"
#import "objc/message.h"
#import "objc/runtime.h"

@implementation people (zbb)

static double WeightKey;
-(void)setWeight:(double)weight
{
    objc_setAssociatedObject(self, &WeightKey, @(weight), OBJC_ASSOCIATION_ASSIGN);
}
-(double)weight
{
    double temp = [objc_getAssociatedObject(self, &WeightKey) doubleValue];
    return temp;
}

static NSString * NewNameKey;
-(void)setNewName:(NSString *)newName
{
    objc_setAssociatedObject(self, &NewNameKey, newName, OBJC_ASSOCIATION_COPY);
}
-(NSString *)newName
{
    NSString * temp = objc_getAssociatedObject(self, &NewNameKey);
    return temp;
}

@end
