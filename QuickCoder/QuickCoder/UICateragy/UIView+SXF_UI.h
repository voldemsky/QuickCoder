//
//  UIView+SXF_UI.h
//  QuickCoder
//
//  Created by 289124787@qq.com on 2017/7/27.
//  Copyright © 2017年 289124787@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SXF_UI.h"
@interface UIView (SXF_UI)
- (void)sxf_initUI:(void(^)(SXF_UI *UI))sxf_ui;
@end
