//
//  ZBColor.h
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZBColor : UIColor

+ (UIColor *)colorWithHex:(long)hex;

+ (UIColor *)colorWithHexString:(NSString *)hexString;

+ (UIColor *)randomColor;

@end
