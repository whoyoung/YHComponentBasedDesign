//
//  YHDirector.h
//  DirectorComponent
//
//  Created by young on 2019/9/14.
//

@import Foundation;
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface YHDirector : NSObject

+ (instancetype)director;

@property (nonatomic, strong) UINavigationController *rootNav;

- (UINavigationController *)currentSelectedNavigationController;

@end

NS_ASSUME_NONNULL_END
