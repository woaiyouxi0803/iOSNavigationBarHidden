//
//  UIViewController+NavigationBarHidden.h
//  NavigationBarHidden
//
//  Created by jiangxin on 2018/11/6.
//  Copyright © 2018年 woaiyouxi0803. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (NavigationBarHidden)
/// 是否隐藏导航栏。默认NO。
@property (nonatomic , assign) BOOL shouldNavigationBarHidden;

@end





@interface HideNavigationController : UINavigationController<UINavigationControllerDelegate>

@end

