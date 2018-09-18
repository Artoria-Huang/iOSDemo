//
//  AObject.m
//  AutoreleasePoolDemo
//
//  Created by huangjing on 2018/9/18.
//  Copyright © 2018年 JH. All rights reserved.
//

#import "AObject.h"

@implementation AObject

+ (instancetype) aobject {
    return [[AObject alloc] init];
}

- (void)dealloc {
    NSLog(@"AObejct dealloc");
}

@end
