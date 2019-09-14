//
//  YHInternalModule.m
//  YHInternal
//
//  Created by young on 2019/9/14.
//

@import DependencyComponent;
@import YHPublic;
@import DirectorComponent;

#import "YHInternalModule.h"

@implementation YHInternalModule

+ (void)registerModule {
    [DependencyManager registerProtocol:@protocol(YHDirectorProtocolCompontA) block:^id{
        return [YHDirector director];
    }];
}

@end
