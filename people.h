//
//  people.h
//  runtime
//
//  Created by 朱冰冰 on 15/5/12.
//  Copyright (c) 2015年 朱冰冰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface people : NSObject

@property (nonatomic,assign)int age;
@property (nonatomic,copy) NSString * name;

@property (nonatomic,copy) void (^block)();

@end
