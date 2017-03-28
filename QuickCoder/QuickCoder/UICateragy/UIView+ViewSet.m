//
//  UIView+ViewSet.m
//  PMPos
//
//  Created by 289124787@qq.com on 2017/3/27.
//  Copyright © 2017年 Vbill Payment Co., Ltd. All rights reserved.
//

#import "UIView+ViewSet.h"

@implementation UIView (ViewSet)

#pragma mark 一键创建View
+ (__kindof UIView *)yww_view_created:(struct view_attribute_enum)viewAttr
{
    return nil;
}
/**快捷设置属性   --按钮名称*/
- (setAttribute_id)view_attr_backgroundColor
{
    setAttribute_id att = ^(UIColor *color){
        [self setBackgroundColor:color];
    };
    return att;
}

- (setAttribute_id)view_attr_layerColor
{
    setAttribute_id att = ^(UIColor *color){
        self.layer.borderColor = color.CGColor;
    };
    return att;
}
- (setAttribute_float)view_attr_corneradius
{
    setAttribute_float att =^(CGFloat size){
        self.layer.cornerRadius = size;
    };
    return att;
}
- (setAttribute_float)view_attr_bordWidth
{
    setAttribute_float att =^(CGFloat size){
        self.layer.borderWidth = size;
    };
    return att;
}
@end
