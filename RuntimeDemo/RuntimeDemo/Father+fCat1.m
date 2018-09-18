//
//  Father+fCat1.m
//  RuntimeDemo
//
//  Created by huangjing on 2018/9/17.
//  Copyright © 2018年 JH. All rights reserved.
//

#import "Father+fCat1.h"

@implementation Father (fCat1)

+ (void)load {
    NSLog(@"Father CAT Load");
}

+ (void)initialize {
    NSLog(@"Father CAT initialize");
}


@end
