//
//  ZBTextView.m
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import "ZBTextView.h"

@interface ZBTextView(){
    
    TextDidChanged _didChanged;
    
}

@property (nonatomic, strong) UILabel *placeHolderLabel ;
@end;


@implementation ZBTextView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setValue:self.placeHolderLabel forKey:@"_placeholderLabel"];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setValue:self.placeHolderLabel forKey:@"_placeholderLabel"];
    }
    return self;
}

-(instancetype)initWithFontSize:(NSInteger)fontSize placeHolder:(NSString *)placeHolder textDidChanged:(TextDidChanged)changed{
    
    self = [super init];
    if (self) {
        [self setValue:self.placeHolderLabel forKey:@"_placeholderLabel"];
        self.font = [UIFont systemFontOfSize:fontSize];
        self.placeHolder = placeHolder;
        
        _didChanged = changed;
        
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textDidChange:) name:UITextViewTextDidChangeNotification object:nil];
    }
    
    return self;
}


- (void)textDidChange:(id)sender{
    
    if (self && _didChanged) {
        _didChanged(self.text);
    }
}


-(void)setFont:(UIFont *)font{
    [super setFont:font];
    if (_placeHolderLabel) {
        _placeHolderLabel.font = font;
    }
}

#pragma mark- set
-(void)setPlaceHolder:(NSString *)placeHolder{
    _placeHolder = placeHolder;
    if (self.placeHolderLabel) {
        self.placeHolderLabel.text = placeHolder;
    }
}


#pragma mark- lazy
-(UILabel *)placeHolderLabel{
    
    if (!_placeHolderLabel) {
        _placeHolderLabel = [[UILabel alloc] init];
        _placeHolderLabel.numberOfLines = 0;
        _placeHolderLabel.textColor = [UIColor lightGrayColor];
        [_placeHolderLabel sizeToFit];
        _placeHolderLabel.font = self.font;
        [self addSubview:_placeHolderLabel];
    }
    return _placeHolderLabel;
}



@end
