//
//  SXF_UI.m
//  QuickCoder
//
//  Created by 289124787@qq.com on 2017/7/27.
//  Copyright © 2017年 289124787@qq.com. All rights reserved.
//

#import "SXF_UI.h"

@implementation SXF_UI
- (SXF_UI *(^)(__kindof UIView *supper))sxf_superView
{
    return ^SXF_UI *(__kindof UIView *supper){
        [supper addSubview:self.owen];
        return self;
    };
}

/**   UIVIew  */
- (SXF_UI *(^)(UIColor *color))sxf_Color
{
    return ^SXF_UI *(UIColor *color){
        self.owen.backgroundColor = color;
        return self;
    };
}
- (SXF_UI *(^)(CGRect rect))sxf_frame
{
    return ^SXF_UI *(CGRect rect){
        self.owen.frame = rect;
        return self;
    };
}
- (SXF_UI *(^)(NSInteger tag))sxf_tag
{
    return ^SXF_UI *(NSInteger tag){
        self.owen.tag = tag;
        return self;
    };
}

/**   UILabel  */
- (SXF_UI *(^)(NSTextAlignment   alig))sxf_align
{
    return ^SXF_UI *(NSTextAlignment   alig){
        UILabel *label = (UILabel *)self.owen;
        label.textAlignment = alig;
        return self;
    };
}
- (SXF_UI *(^)(NSString         *text))sxf_text
{
    return ^SXF_UI *(NSString         *text){
        UILabel *label = (UILabel *)self.owen;
        label.text = text;
        return self;
    };
}
- (SXF_UI *(^)(UIFont           *font))sxf_font
{
    return ^SXF_UI *(UIFont           *font){
        UILabel *label = (UILabel *)self.owen;
        label.font = font;
        return self;
    };
}
- (SXF_UI *(^)(UIColor     *textColor))sxf_textColor
{
    return ^SXF_UI *(UIColor     *textColor){
        UILabel *label = (UILabel *)self.owen;
        label.textColor = textColor;
        return self;
    };
}

/**   UIButton  */
- (SXF_UI *(^)(NSString *title,UIControlState state))sxf_title
{
    return ^SXF_UI *(NSString *title,UIControlState state){
        UIButton *btn = (UIButton *)self.owen;
        [btn setTitle:title forState:state];
        return self;
    };
}
- (SXF_UI *(^)(UIColor *titleColor,UIControlState state))sxf_titleColor
{
    return ^SXF_UI *(UIColor *titleColor,UIControlState state){
        UIButton *btn = (UIButton *)self.owen;
        [btn setTitleColor:titleColor forState:state];
        return self;
    };
}
- (SXF_UI *(^)(UIFont *titleFont))sxf_titleFont
{
    return ^SXF_UI *(UIFont *titleFont){
        UIButton *btn = (UIButton *)self.owen;
        btn.titleLabel.font = titleFont;
        return self;
    };
}

/**   UIImageView  */
- (SXF_UI *(^)(UIImage *image))sxf_image
{
    return ^SXF_UI *(UIImage *image){
        UIImageView *imgView = (UIImageView *)self.owen;
        imgView.image = image;
        return self;
    };
}

@end
