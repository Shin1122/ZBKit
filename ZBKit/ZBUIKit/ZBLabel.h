//
//  ZBLabel.h
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ZBLabel : UILabel

/**是否富文本*/
@property (nonatomic, assign) BOOL isAttributedContent ;
/** 包含行数 */
@property (nonatomic, assign ,readonly,getter=lines) NSUInteger lines ;

@property (nonatomic, assign) NSUInteger *maxLinesNumber ;

-(instancetype)initWithText:(NSString *)text;

-(instancetype)initWithAttributeString:(NSAttributedString *)attributeString;

- (instancetype)initWithString:(NSString *)str attributes:(NSDictionary<NSAttributedStringKey, id> *)attrs;



@end
