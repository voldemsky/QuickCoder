//
//  viewSetCateragy.h
//  PMPos
//
//  Created by 289124787@qq.com on 2017/3/27.
//  Copyright © 2017年 Vbill Payment Co., Ltd. All rights reserved.
//

#ifndef viewSetCateragy_h
#define viewSetCateragy_h
typedef void(^setAttribute_id)(id info);
typedef void(^setAttribute_float)(CGFloat size);
typedef void(^setAttribute_SEL)(SEL sel,id target);

struct view_attribute_enum{
    CGColorRef backgroundColor;
    CGColorRef layerColor;

    CGFloat    corneradius;
    CGFloat    bordWidth;
};

struct label_attribute_enum{
    CFStringRef title_namal;
    CFStringRef title_select;
    CGFontRef   title_font;
    CGColorRef  title_color_namal;
    CGColorRef  title_color_select;
    
    CGImageRef  button_image_namal;
    CGImageRef  button_image_select;
    
    CGImageRef  button_backgroundImage_namal;
    CGImageRef  button_backgroundImage_select;
    
    CGColorRef  button_backgroundColor;
};

struct imageView_attribute_enum{
    CFStringRef title_namal;
    CFStringRef title_select;
    CGFontRef   title_font;
    CGColorRef  title_color_namal;
    CGColorRef  title_color_select;
    
    CGImageRef  button_image_namal;
    CGImageRef  button_image_select;
    
    CGImageRef  button_backgroundImage_namal;
    CGImageRef  button_backgroundImage_select;
    
    CGColorRef  button_backgroundColor;
};

struct button_attribute_enum{
    CFStringRef title_namal;
    CFStringRef title_select;
    CGFontRef   title_font;
    CGColorRef  title_color_namal;
    CGColorRef  title_color_select;
    
    CGImageRef  button_image_namal;
    CGImageRef  button_image_select;
    
    CGImageRef  button_backgroundImage_namal;
    CGImageRef  button_backgroundImage_select;
    
    CGColorRef  button_backgroundColor;
};

struct tableView_attribute_enum{
    CFStringRef title_namal;
    CFStringRef title_select;
    CGFontRef   title_font;
    CGColorRef  title_color_namal;
    CGColorRef  title_color_select;
    
    CGImageRef  button_image_namal;
    CGImageRef  button_image_select;
    
    CGImageRef  button_backgroundImage_namal;
    CGImageRef  button_backgroundImage_select;
    
    CGColorRef  button_backgroundColor;
};

#pragma mark 视图属性
static inline struct view_attribute_enum Yww_created_view_attr(UIColor *backgroundColor,
                                                               UIColor *layerColor,
                                                               CGFloat corneradius,
                                                               CGFloat bordWidth)
{
    struct view_attribute_enum attri;
    attri.backgroundColor = (__bridge_retained CGColorRef)backgroundColor;
    attri.layerColor = (__bridge_retained CGColorRef)layerColor;
    attri.corneradius = corneradius;
    attri.bordWidth = bordWidth;
    return attri;
}

#pragma mark 按钮属性
static inline struct button_attribute_enum Yww_created__button_attr(NSString *title_namal,
                                                              NSString *title_select,
                                                              UIFont   *title_font,
                                                              UIColor  *title_color_namal,
                                                              UIColor  *title_color_select,
                                                              UIImage  *button_image_namal,
                                                              UIImage  *button_image_select,
                                                              UIImage  *button_backgroundImage_namal,
                                                              UIImage  *button_backgroundImage_select,
                                                              UIColor *button_backgroundColor)
{
    struct button_attribute_enum attri;
    attri.title_namal = (__bridge_retained CFStringRef)title_namal;
    attri.title_select = (__bridge_retained CFStringRef)title_select;
    attri.title_font = (__bridge_retained CGFontRef)title_font;
    attri.title_color_namal = (__bridge_retained CGColorRef)title_color_namal;
    attri.title_color_select = (__bridge_retained CGColorRef)title_color_select;
    attri.button_image_namal = (__bridge_retained CGImageRef)button_image_namal;
    attri.button_image_select = (__bridge_retained CGImageRef)button_image_select;
    attri.button_backgroundColor = (__bridge_retained CGColorRef)button_backgroundColor;
    return attri;
}


#endif /* viewSetCateragy_h */
