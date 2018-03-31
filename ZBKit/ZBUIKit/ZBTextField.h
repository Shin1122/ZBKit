//
//  ZBTextField.h
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TextDidChanged)(NSString *text);

@interface ZBTextField : UITextField

-(instancetype)initWithPlachHolder:(NSString *)placeHolder textDidChanged:(TextDidChanged)changed;


-(instancetype)initWithFrame:(CGRect)frame plachHolder:(NSString *)placeHolder textDidChanged:(TextDidChanged)changed;

@end
