//
//  ViewController.m
//  runtime
//
//  Created by 朱冰冰 on 15/5/12.
//  Copyright (c) 2015年 朱冰冰. All rights reserved.
//

#import "ViewController.h"
#import "people.h"
#import "people+zbb.h"
#import "UIView+zbb.h"
#import "objc/runtime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //block究竟放在什么地方：堆／栈
    //默认情况下，任何block都是在栈，随时可能被回收
//    void (^block)()=^{
//        NSLog(@"block");
//    };
//    block();
//    [block copy];
//
//    people * p = [[people alloc]init];
//    
//    //弱引用
//    __weak people * p2 = p;
////    __unsafe_unretained people * p3 = p;
//    
//    p.block = ^ {
//        p2.age = 2;
//    };
    
    //category的属性扩展
    people * p =[[people alloc]init];
              
    p.weight = 100;
    NSLog(@"%f",p.weight);
    
    p.newName = @"new";
    NSLog(@"%@",p.newName);
    
    UIView * view = [[UIView alloc]init];
    view.testTest = 3;
    NSLog(@"%f",view.testTest);
    
    //用运行时遍历类的所有属性
//    unsigned int count = 0;
//    
//    //获得people中所有的成员变量
//    Ivar * ivars = class_copyIvarList([people class], &count);
//
//    //遍历所有
//    for (int i=0; i<count; i++) {
//        Ivar ivar = ivars[i];
//        
//        const char * name = ivar_getName(ivar);
//        const char * type = ivar_getTypeEncoding(ivar);
//        
//        NSLog(@"%s %s",name,type);
//    }
    
}

@end
