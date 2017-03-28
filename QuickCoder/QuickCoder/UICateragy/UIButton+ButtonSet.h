//
//  UIButton+ButtonSet.h
//  PMPos
//
//  Created by 289124787@qq.com on 2017/3/27.
//  Copyright © 2017年 Vbill Payment Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "viewSetCateragy.h"

@interface UIButton (ButtonSet)

#pragma mark 一键创建button
+ (__kindof UIControl *)yww_button_created:(struct button_attribute_enum)buttonAttr;

/**快捷设置属性   --按钮名称*/
- (setAttribute_id)button_attr_title_namal;
- (setAttribute_id)button_attr_title_selected;
- (setAttribute_id)button_attr_titleFont_namal;
- (setAttribute_id)button_attr_titleColor_namal;
- (setAttribute_id)button_attr_titleColor_selected;

- (setAttribute_id)button_attr_image_namal;
- (setAttribute_id)button_attr_image_selected;

- (setAttribute_id)button_attr_backgroundColor_namal;
- (setAttribute_id)button_attr_backgroundImage_namal;
- (setAttribute_id)button_attr_backgroundImage_selected;

/**快捷快捷设置事件响应*/
- (setAttribute_SEL)button_target_touchDown;
- (setAttribute_SEL)button_target_touchUpInsied;

/**快捷设置响应回掉*/

@end
