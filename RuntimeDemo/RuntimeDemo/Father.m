//
//  Father.m
//  RuntimeDemo
//
//  Created by huangjing on 2018/9/17.
//  Copyright © 2018年 JH. All rights reserved.
//

#import "Father.h"

@interface Father ()
@property (nonatomic, strong) NSObject *tobj;
@end

@implementation Father

+ (void)load {
    NSLog(@"father load");
}

+ (void)initialize {
    NSLog(@"Father initialize");
}

@end
