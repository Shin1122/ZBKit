//
//  ZBLabel.m
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import "ZBLabel.h"
#import <CoreText/CoreText.h>


@interface ZBLabel(){
    
}
@end


@implementation ZBLabel

-(instancetype)initWithText:(NSString *)text{
    self = [super init];
    if (self) {
        self.text = text;
    }
    return self;
}

-(instancetype)initWithAttributeString:(NSAttributedString *)attributeString{
    self = [super init];
    if (self) {
        self.attributedText = attributeString;
    }
    return self;
}

-(instancetype)initWithString:(NSString *)str attributes:(NSDictionary<NSAttributedStringKey,id> *)attrs{
    
    self = [super init];
    if (self) {
        NSAttributedString *attString = [[NSAttributedString alloc]initWithString:str attributes:attrs];
        self.attributedText = attString;
    }
    return self;
}


-(NSUInteger)lines{
    
    NSString *text = [self text];
    UIFont *font = [self font];
    CGRect rect = [self frame];
    
    CTFontRef myFont = CTFontCreateWithName((__bridge CFStringRef)([font fontName]), [font pointSize], NULL);
    
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:text];
    [attStr addAttribute:(NSString *)kCTFontAttributeName value:(__bridge id)myFont range:NSMakeRange(0, attStr.length)];
    
    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((__bridge CFAttributedStringRef)attStr);
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0,0,rect.size.width,100000));
    
    CTFrameRef frame = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), path, NULL);
    
    NSArray *lines = (__bridge NSArray *)CTFrameGetLines(frame);
    return lines.count;
}

-(void)setMaxLinesNumber:(NSUInteger *)maxLinesNumber{
    _maxLinesNumber = maxLinesNumber;
//    CGRect frame = self.frame;
//    if (maxLinesNumber > 0) {
//        if (self.isAttributedContent) {
//            NSDictionary *attrs = [self.attributedText attributesAtIndex:0 effectiveRange:nil];
//            NSMutableParagraphStyle *paragraphStyle = attrs[NSParagraphStyleAttributeName];
//            frame.size.height = ((self.font.lineHeight) * (NSInteger)maxLinesNumber + paragraphStyle.lineSpacing * ((NSInteger)maxLinesNumber - 1) + 0.1);
//        } else {
//            frame.size.height = (self.font.lineHeight * (NSInteger)maxLinesNumber + 0.1);
//        }
//    } else {
//    }
//    
//    self.frame = frame;
}



@end
