//
//  YHDirector.m
//  DirectorComponent
//
//  Created by young on 2019/9/14.
//

#import "YHDirector.h"

@implementation YHDirector

+ (instancetype)director {
    static YHDirector *dir;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dir = [[YHDirector alloc] init];
    });
    return dir;
}

- (UINavigationController *)currentSelectedNavigationController {
    UINavigationController *result = self.rootNav;
    //先在多级 presented 中能找到最后一层，如果最后一层不是 navigation 再反向查找到 navigation
    //最终找到多级 presented 中最后面的 navigation
    while (result.presentedViewController) {
        result = (UINavigationController *)result.presentedViewController;
    }
    if (![result isKindOfClass:[UINavigationController class]]) {
        while (result.presentingViewController && [result.presentingViewController isKindOfClass:[UINavigationController class]]) {
            result = (UINavigationController *)result.presentingViewController;
            break;
        }
    }
    if (result == nil || ![result isKindOfClass:[UINavigationController class]]) {
        result = self.rootNav;
    }
    
    return result;
}

@end
