//
//  MethodDefault.h
//  QuickCoder
//
//  Created by 289124787@qq.com on 2017/3/29.
//  Copyright © 2017年 289124787@qq.com. All rights reserved.
//

#ifndef MethodDefault_h
#define MethodDefault_h
#import "ButtonPropety.h"
/***************************property********************************/
#define QuickCoder_propety_retain(class,propety)    @property(nonatomic,retain)class *propety;
#define QuickCoder_propety_strong(class,propety)    @property(nonatomic,strong)class *propety;
#define QuickCoder_propety_copy(class,propety)      @property(nonatomic,copy)class *propety;
#define QuickCoder_propety_assign(class,propety)    @property(nonatomic,assign)class propety;



/***************************getter********************************/
#define QuickCoder_method_getter_retain(class,propety)\
- (class *)propety{\
    if(!_##propety){\
    _##propety = [[class alloc] init];\
    }\
    return _##propety;\
}

#define QuickCoder_method_getter_assign(class,propety)\
- (class)propety{\
    if(!_##propety){\
    _##propety = [[class alloc] init];\
    }\
    return _##propety;\
}
/***************************propety_init********************************/

/***************************delegeteMethod********************************/
/**tableView的代理方法*/











/***************************PublicMethod********************************/





#endif /* MethodDefault_h */
