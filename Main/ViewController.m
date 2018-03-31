//
//  ViewController.m
//  ZBKit
//
//  Created by Lakeside on 2018/3/31.
//  Copyright © 2018年 Shin. All rights reserved.
//

#import "ViewController.h"
#import "ZBKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZBTextView *view
    = [[ZBTextView alloc]initWithFontSize:15 placeHolder:@"落地请开手机" textDidChanged:^(NSString *text) {
       
    }];
    
    view.frame=CGRectMake(100, 100, 200, 200);
    view.layer.borderColor = [ZBColor blackColor].CGColor;
    view.layer.borderWidth = 1;
    view.font = [ZBFont fontSize:12];
    [self.view addSubview:view];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
