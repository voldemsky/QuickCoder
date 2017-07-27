//
//  UIView+SXF_UI.m
//  QuickCoder
//
//  Created by 289124787@qq.com on 2017/7/27.
//  Copyright © 2017年 289124787@qq.com. All rights reserved.
//

#import "UIView+SXF_UI.h"
#import "SXF_UI.h"
@implementation UIView (SXF_UI)
- (void)sxf_initUI:(void(^)(SXF_UI *UI))sxf_ui
{
    SXF_UI *ui = [[SXF_UI alloc] init];
    ui.owen = self;
    if (sxf_ui) {
        sxf_ui(ui);
    }
}
@end
