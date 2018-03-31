//
//  ZBTextView.h
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TextDidChanged)(NSString *text);

@interface ZBTextView : UITextView

@property (nonatomic, strong) NSString *placeHolder ;

-(instancetype)initWithFontSize:(NSInteger)fontSize placeHolder:(NSString *)placeHolder textDidChanged:(TextDidChanged)changed;

@end
