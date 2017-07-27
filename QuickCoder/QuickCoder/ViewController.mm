//
//  ViewController.m
//  QuickCoder
//
//  Created by 289124787@qq.com on 2017/3/28.
//  Copyright © 2017年 289124787@qq.com. All rights reserved.
//

#import "ViewController.h"
#import "UIView+SXF_UI.h"
#import "SXF_UI.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *view = [[UIButton alloc] init];
    
    [view sxf_initUI:^(SXF_UI *UI) {
        UI.sxf_Color([UIColor redColor]).sxf_superView(self.view).sxf_frame(CGRectMake(0, 0, 100, 100));
        UI.sxf_title(@"你大爷还是你大爷",UIControlStateNormal);
    }];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
