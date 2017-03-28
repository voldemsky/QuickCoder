//
//  UIButton+ButtonSet.m
//  PMPos
//
//  Created by 289124787@qq.com on 2017/3/27.
//  Copyright © 2017年 Vbill Payment Co., Ltd. All rights reserved.
//

#import "UIButton+ButtonSet.h"

@implementation UIButton (ButtonSet)
#pragma mark 一键创建button
+ (__kindof UIControl *)yww_button_created:(struct button_attribute_enum)buttonAttr
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    NSString *title_namal = (__bridge_transfer NSString *)buttonAttr.title_namal;
    button.button_attr_title_namal(title_namal);
    NSString *title_select = (__bridge_transfer NSString *)buttonAttr.title_select;
    button.button_attr_title_selected(title_select);
    UIFont *title_font = (__bridge_transfer UIFont *)buttonAttr.title_font;
    button.button_attr_titleFont_namal(title_font);
    UIColor *title_color_namal = (__bridge_transfer UIColor *)buttonAttr.title_color_namal;
    button.button_attr_titleColor_namal(title_color_namal);
    UIColor *title_color_select = (__bridge_transfer UIColor *)buttonAttr.title_color_select;
    button.button_attr_titleColor_selected(title_color_select);
    UIImage *button_image_namal = (__bridge_transfer UIImage *)buttonAttr.button_image_namal;
    button.button_attr_image_namal(button_image_namal);
    UIImage *button_image_select = (__bridge_transfer UIImage *)buttonAttr.button_image_select;
    button.button_attr_image_selected(button_image_select);
    UIImage *button_backgroundImage_namal = (__bridge_transfer UIImage *)buttonAttr.button_backgroundImage_namal;
    button.button_attr_backgroundImage_namal(button_backgroundImage_namal);
    UIImage *button_backgroundImage_select = (__bridge_transfer UIImage *)buttonAttr.button_backgroundImage_select;
    button.button_attr_backgroundImage_selected(button_backgroundImage_select);
    UIColor *button_backgroundColor = (__bridge_transfer UIColor *)buttonAttr.button_backgroundColor;
    button.button_attr_backgroundColor_namal(button_backgroundColor);
    
    return button;
}
/**快捷设置属性   --按钮名称*/
- (setAttribute_id)button_attr_title_namal
{
    setAttribute_id att = ^(NSString *title){
        [self setTitle:title forState:UIControlStateNormal];
    };
    return att;
}
- (setAttribute_id)button_attr_title_selected
{
    setAttribute_id att = ^(NSString *title){
        [self setTitle:title forState:UIControlStateSelected];
    };
    return att;
}
- (setAttribute_id)button_attr_titleFont_namal
{
    setAttribute_id att = ^(UIFont *font){
        self.titleLabel.font = font;
    };
    return att;
}

- (setAttribute_id)button_attr_titleColor_namal
{
    setAttribute_id att = ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
    };
    return att;
}
- (setAttribute_id)button_attr_titleColor_selected
{
    setAttribute_id att = ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateSelected];
    };
    return att;
}

- (setAttribute_id)button_attr_image_namal
{
    setAttribute_id att = ^(UIImage *image){
        [self setImage:image forState:UIControlStateNormal];
    };
    return att;
}
- (setAttribute_id)button_attr_image_selected
{
    setAttribute_id att = ^(UIImage *image){
        [self setImage:image forState:UIControlStateSelected];
    };
    return att;
}

- (setAttribute_id)button_attr_backgroundColor_namal
{
    setAttribute_id att = ^(UIColor *color){
        [self setBackgroundColor:color];
    };
    return att;
}
- (setAttribute_id)button_attr_backgroundImage_namal
{
    setAttribute_id att = ^(UIImage *image){
        [self setBackgroundImage:image forState:UIControlStateNormal];
    };
    return att;
}
- (setAttribute_id)button_attr_backgroundImage_selected
{
    setAttribute_id att = ^(UIImage *image){
        [self setBackgroundImage:image forState:UIControlStateSelected];
    };
    return att;
}


/**快捷快捷设置事件响应*/
- (setAttribute_SEL)button_target_touchDown
{
    setAttribute_SEL selAtt = ^(SEL sel,id target){
        if ([target respondsToSelector:sel]) {
            [self addTarget:target action:sel forControlEvents:UIControlEventTouchDown];
        }
    };
    return selAtt;
}
- (setAttribute_SEL)button_target_touchUpInsied
{
    setAttribute_SEL selAtt = ^(SEL sel,id target){
        if ([target respondsToSelector:sel]) {
            [self addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
        }
    };
    return selAtt;
}
@end
