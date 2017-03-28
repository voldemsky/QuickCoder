//
//  UIView+ViewSet.h
//  PMPos
//
//  Created by 289124787@qq.com on 2017/3/27.
//  Copyright © 2017年 Vbill Payment Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "viewSetCateragy.h"

@interface UIView (ViewSet)

/**快速创建一条线*/
#pragma mark 一键创建View
+ (__kindof UIView *)yww_view_created:(struct view_attribute_enum)viewAttr;
/**快捷设置属性   --按钮名称*/
- (setAttribute_id)view_attr_backgroundColor;

- (setAttribute_id)view_attr_layerColor;
- (setAttribute_float)view_attr_corneradius;
- (setAttribute_float)view_attr_bordWidth;

@end
