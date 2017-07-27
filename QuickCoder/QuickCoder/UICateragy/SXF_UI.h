//
//  SXF_UI.h
//  QuickCoder
//
//  Created by 289124787@qq.com on 2017/7/27.
//  Copyright © 2017年 289124787@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SXF_UI : NSObject

@property(nonatomic,weak)UIView *owen;

- (SXF_UI *(^)(__kindof UIView *supper))sxf_superView;

/**   UIVIew  */
- (SXF_UI *(^)(UIColor *color))sxf_Color;
- (SXF_UI *(^)(CGRect rect))sxf_frame;
- (SXF_UI *(^)(NSInteger tag))sxf_tag;

/**   UILabel  */
- (SXF_UI *(^)(NSTextAlignment   alig))sxf_align;
- (SXF_UI *(^)(NSString         *text))sxf_text;
- (SXF_UI *(^)(UIFont           *font))sxf_font;
- (SXF_UI *(^)(UIColor     *textColor))sxf_textColor;

/**   UIButton  */
- (SXF_UI *(^)(NSString *title,UIControlState state))sxf_title;
- (SXF_UI *(^)(UIColor *titleColor,UIControlState state))sxf_titleColor;
- (SXF_UI *(^)(UIFont *titleFont))sxf_titleFont;

/**   UIImageView  */
- (SXF_UI *(^)(UIImage *image))sxf_image;

@end
