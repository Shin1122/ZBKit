//
//  ZBTextField.m
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import "ZBTextField.h"

@interface ZBTextField(){

    TextDidChanged _didChanged;
}
@end


@implementation ZBTextField

-(instancetype)initWithPlachHolder:(NSString *)placeHolder textDidChanged:(TextDidChanged)changed{
    if (!self) {
        self = [super init];
    }
    if (self) {
        self.placeholder = placeHolder;
        _didChanged = changed;
       
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textDidChanged:) name:UITextFieldTextDidChangeNotification object:nil];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame plachHolder:(NSString *)placeHolder textDidChanged:(TextDidChanged)changed{
    self = [super initWithFrame:frame];
    self = [self initWithPlachHolder:placeHolder textDidChanged:changed];
    return self;
    
}



- (void)textDidChanged:(id)sender{
    
    if (self && _didChanged) {
        _didChanged(self.text);
    }
}



@end
