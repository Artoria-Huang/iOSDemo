//
//  ViewController.m
//  AutoreleasePoolDemo
//
//  Created by huangjing on 2018/9/18.
//  Copyright © 2018年 JH. All rights reserved.
//

#import "ViewController.h"
#import "AObject.h"

@interface ViewController ()

@end

@implementation ViewController
__weak NSString *string_weak_ = nil;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self demo2];
}

- (void)demo1 {
    __weak AObject *tmp;
    @autoreleasepool {
        {
            AObject * number = [AObject aobject];
            tmp = number;
            NSLog(@"马上退出{}");
        }
        NSLog(@"马上退出 autoreleasePool");
    }
    NSLog(@"%@", tmp);
    NSLog(@"马上退出viewdidload");
}

- (void)demo2 {
//    // 场景 1
    NSString *string = [NSString stringWithFormat:@"leichunfeng"];
    string_weak_ = string;
    
     //场景 2
//        @autoreleasepool {
//            NSString *string = [NSString stringWithFormat:@"leichunfeng"];
//            string_weak_ = string;
//        }
    
    // 场景 3
//        NSString *string = nil;
//        @autoreleasepool {
//            string = [NSString stringWithFormat:@"leichunfeng"];
//            string_weak_ = string;
//        }
    
    NSLog(@"string: %@", string_weak_);
    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        NSLog(@"this is demo2");
//    });
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    NSLog(@"view WILL Appear");
     NSLog(@"string: %@", string_weak_);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    NSLog(@"view DID Appear");
    NSLog(@"string: %@", string_weak_);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    //AObject * number = [AObject aobject]; 退出作用域就release, 不在pool中
    //AObject * __weak number = [AObject aobject]; 第二行就立刻释放 不在pool中
    //AObject *__unsafe_unretained number = [AObject aobject]; 在pool中        如果是alloc/init 则第二行就立即释放，不在pool中
    //AObject * __autoreleasing number = [AObject aobject]; 在pool中
}


@end
