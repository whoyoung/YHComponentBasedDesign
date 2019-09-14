//
//  YHDirector+ComponentA.m
//  YHPublic
//
//  Created by young on 2019/9/14.
//

#import "YHDirector+ComponentA.h"
#import "InternalViewController.h"

@implementation YHDirector (ComponentA)

- (void)enterInternalVC:(nullable UINavigationController *)nav {
    if (nav) {
        [nav pushViewController:[InternalViewController new] animated:YES];
    }
    [self.rootNav pushViewController:[InternalViewController new] animated:YES];
}

@end
