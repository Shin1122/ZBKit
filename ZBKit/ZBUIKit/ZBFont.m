//
//  ZBFont.m
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import "ZBFont.h"

@implementation ZBFont

+(UIFont *)fontSize:(CGFloat)size{
    
    return [self systemFontOfSize:size];
}

@end
